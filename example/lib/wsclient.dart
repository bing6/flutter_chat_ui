// Handshake represents a handshake: request(client) <====> handshake response(server).
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/rendering.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'protos/proto/common.pb.dart';

// 包类型.
const int pkgTypeHandshake = 0x01;
const int pkgTypeHandshakeAck = 0x02;
const int pkgTypeHeartbeat = 0x03;
const int pkgTypeData = 0x04;
const int pkgTypeKick = 0x05;

// 消息类型.
const int msgTypeRequest = 0x00;
const int msgTypeNotify = 0x01;
const int msgTypeResponse = 0x02;
const int msgTypePush = 0x03;

const pkgHeadBytes = 4;
const msgFlagBytes = 1;
const msgRouteCodeBytes = 2;
const msgIdMaxBytes = 5;
const msgRouteLenBytes = 1;
const msgRouteCodeMax = 0xFFFF;
const msgCompressRouteMask = 0x1;

const msgTypeMask = 0x7;

// 握手完成通知.
typedef WSControllerOnHandshake = void Function();
typedef WSControllerOnBroadcast = void Function();
typedef WSControllerOnDisconnect = void Function();

class WSClient {
  WSClient(
    this.handshakeData, {
    bool debug = false,
    bool compressRoute = false,
    this.onDisconnect,
    this.onHandshake,
    this.onBroadcast,
  }) {
    _compressRoute = compressRoute;
    isDebug = debug;

    _map = {
      pkgTypeHandshake: (WSPackage pkg) {
        _debug('握手完成.', tag: 'Handshake');
        if (pkg.body == null) {
          final result = WSProtocol.strDecode(pkg.body!, isCompress: _compress);
          final data = json.decode(result);
          _dict = data['sys']['dict'].cast<String, int>();
        }
        // 发送已确认信息.
        final package = WSPackage.handshakeACKPackage();
        sendWithPackage(package);
        // 开启定时心跳, 防止被踢.
        _heartbeatTimer = Timer.periodic(Duration(seconds: _heartbeat), (timer) {
          sendWithPackage(WSPackage.heartbeatPackage());
        });
        // 通知握手完成.
        onHandshake?.call();
      },
      pkgTypeHeartbeat: (WSPackage pkg) {
        _debug('服务端发送了心跳数据.', tag: 'Heartbeat');
      },
      pkgTypeData: (WSPackage pkg) {
        final msg = WSMessage.decode(pkg.body!, enabledEncodeString: false);
        final jsonstr = utf8.decode(msg.msg!);
        // json.decode(jsonstr);
        _debug(msg, tag: 'Data');
        // final body = Pong.fromBuffer(msg.msg!);
        _debug(jsonstr, tag: 'Data');
        // _debug(json.decode(jsonstr), tag: 'Data');
      },
      pkgTypeKick: (WSPackage pkg) {},
    };
  }

  WSControllerOnHandshake? onHandshake;
  WSControllerOnBroadcast? onBroadcast;
  WSControllerOnDisconnect? onDisconnect;

  final dynamic handshakeData;

  late bool isDebug;

  WebSocketChannel? _channel;

  // 连接地址.
  Uri? _uri;

  // 是否启用字符串压缩.
  final bool _compress = true;

  // 是否连接.
  bool _connected = false;

  // 回调对应处理方法.
  late Map<int, Function(WSPackage)> _map;

  late Map<String, int> _dict; // 握手后拿到的压缩路由列表.
  final int _heartbeat = 10; // 心跳时间间隔.
  Timer? _heartbeatTimer; // 心跳.
  final _reqCached = <int, Completer<dynamic>>{}; // 请求保存列表,用于回调处理.
  int _reqId = 0; // 请求ID，用来匹配回调.
  bool _compressRoute = false; // 是否启用压缩路由

  // 是否连接中.
  bool connected() => _connected;

  // 连接服务器.
  void connect(Uri uri) {
    _uri = uri;
    try {
      _channel = WebSocketChannel.connect(_uri!);
      _channel!.stream.listen(
        _onReceiveHandler,
        onError: _onErrorHandler,
        onDone: _onDoneHandler,
      );
      _connected = true;

      // 发送握手请求.
      final package = WSPackage.handshakePackage(handshakeData);
      sendWithPackage(package, debug: true);
    } catch (e) {
      debugPrint('Connection exception:$e');
    }
  }

  void disconect() {
    if (_connected) {
      _onDoneHandler();
    }
  }

  void sendWithPackage(WSPackage package, {bool debug = false}) {
    if (!_connected) return;
    _debug(package.toString(), tag: 'SendPackage', debug: debug);
    _channel?.sink.add(package.encode());
  }

  void send(Uint8List data, {bool debug = false}) {
    if (!_connected) return;
    _debug(data, tag: 'SendData', debug: debug);
    _channel?.sink.add(data);
  }

  void request(String route, {Uint8List? data, Function(dynamic res)? callback}) {
    final isCompressRoute = _compressRoute && _dict.containsKey(route);

    final msg = WSMessage(
      ++_reqId,
      msgTypeRequest,
      isCompressRoute,
      isCompressRoute ? _dict[route]! : route,
      msg: data,
      enabledEncodeString: false,
    );
    final bytes = msg.encode();
    final package = WSPackage(pkgTypeData, body: bytes);

    sendWithPackage(package);
  }

  void ping() {
    request('sys.ping');
  }

  void _onReceiveHandler(event) {
    if (event.runtimeType is String) {
      _debug('暂不处理字符串类型的消息 -> $event');
    } else if (event is Uint8List) {
      final packages = WSPackage.decode(event);
      for (var entry in packages) {
        _debug(entry.toString(), tag: 'ReceiveData');
        if (_map.containsKey(entry.type)) {
          _map[entry.type]?.call(entry);
        } else {
          _debug('Type "${entry.type}" is not define.');
        }
      }
    }
  }

  void _onErrorHandler(e) {
    _debug('Socket exception:$e');
  }

  void _onDoneHandler() {
    _debug('Connect close.', tag: 'Done');

    _heartbeatTimer?.cancel();
    _heartbeatTimer = null;
    _connected = false;

    onDisconnect?.call();
  }

  void _debug(dynamic out, {String? tag, bool debug = false}) {
    if (!(isDebug || debug)) return;
    if (tag != null) {
      debugPrint('[WS-$tag]: $out');
    } else {
      debugPrint('[WS]: $out');
    }
  }
}

class WSProtocol {
  static Uint8List strEncode(String str, {bool isCompress = false}) {
    final source = utf8.encode(str);
    if (isCompress) {
      return Uint8List.fromList(ZLibEncoder().convert(source));
    }
    return Uint8List.fromList(source);
  }

  static String strDecode(Uint8List body, {bool isCompress = false}) {
    if (isCompress) {
      final source = ZLibDecoder().convert(body);
      return utf8.decode(source);
    }
    return utf8.decode(body);
  }
}

class WSPackage {
  WSPackage(this.type, {this.body});

  final int type;
  Uint8List? body;

  static final Map<int, String> _map = {
    pkgTypeHandshake: 'Handshake',
    pkgTypeHandshakeAck: 'HandshakeAck',
    pkgTypeHeartbeat: 'Heartbeat',
    pkgTypeData: 'Data',
    pkgTypeKick: 'Kick',
  };

  @override
  String toString() => 'Type:${_map[type]} Length:${body?.length ?? 0} Body:${body ?? ""}';

  Uint8List encode() {
    final length = body?.length ?? 0;
    final buf = ByteData(pkgHeadBytes + length);

    var index = 0;

    buf.setUint8(index++, type & 0xFF);
    buf.setUint8(index++, (length >> 16) & 0xFF);
    buf.setUint8(index++, (length >> 8) & 0xFF);
    buf.setUint8(index++, length & 0xFF);

    for (var i = 0; i < length; i++) {
      buf.setUint8(index++, body![i]);
    }
    return buf.buffer.asUint8List();
  }

  static List<WSPackage> decode(Uint8List bytes) {
    final pkgs = <WSPackage>[];
    var length = 0;
    var offset = 0;

    while (offset < bytes.length) {
      final type = bytes[offset++];
      length = ((bytes[offset++]) << 16 | (bytes[offset++]) << 8 | bytes[offset++]) >>> 0;
      final body = length > 0 ? bytes.sublist(offset, length) : null;
      offset += length;
      pkgs.add(WSPackage(type, body: body));
    }
    return pkgs;
  }

  static WSPackage heartbeatPackage() => WSPackage(pkgTypeHeartbeat);

  static WSPackage handshakePackage(dynamic data) => WSPackage(
        pkgTypeHandshake,
        body: Uint8List.fromList(
          utf8.encode(
            json.encode(data),
          ),
        ),
      );

  static WSPackage handshakeACKPackage() => WSPackage(pkgTypeHandshakeAck);
}

class WSMessage {
  WSMessage(
    this.id,
    this.type,
    this.compressRoute,
    this.route, {
    this.msg,
    this.enabledEncodeString = true,
  });

  final int id; // Id 如果为0表示为通知，不接收返回值.
  final int type; // 消息类型.
  final bool compressRoute; // 是否启用压缩路由.
  final dynamic route; // 仅限String Or int 类型.
  Uint8List? msg; // 具体的消息内容.
  bool enabledEncodeString;

  static final Map<int, String> _map = {
    msgTypeResponse: 'Response',
    msgTypeRequest: 'Request',
    msgTypeNotify: 'Notify',
    msgTypePush: 'Push',
  };

  @override
  String toString() => 'ID:$id Type:${_map[type]} IsCompressRoute:$compressRoute Route:$route Msg:$msg';

  Uint8List encode() {
    // 消息长度.
    var len = 0;
    // 计算ID字节大小.只有Request与Response计算, 其它为0字节.
    final idBytes = _msgHasId(type) ? _caculateMsgIdBytes(id) : 0;
    len += msgFlagBytes + idBytes;

    Uint8List? routeData;

    // 注意:压缩路由只能处理最多65535个路由
    // 不压缩时路由字符串最大长度为255, 路由不是能中文.没做判断
    if (_msgHasRoute(type)) {
      if (compressRoute) {
        if (route is! int) {
          throw Exception('Error flag for number route!');
        }
        len += msgRouteCodeBytes;
      } else {
        len += msgRouteLenBytes;
        if (route.length > 255) {
          throw Exception('Route max length is overflow!');
        }
        routeData = WSProtocol.strEncode(route, isCompress: enabledEncodeString);
        len += routeData.length;
      }
    }

    if (msg != null) {
      len += msg!.length;
    }

    final buf = ByteData(len);
    var offset = 0;

    // Add flag.
    offset = _encodeMsgFlag(type, compressRoute, buf, offset);

    // Add message id.
    if (_msgHasId(type)) {
      offset = _encodeMsgId(id, buf, offset);
    }

    // Add route.
    if (_msgHasRoute(type)) {
      offset = _encodeMsgRoute(
        compressRoute,
        compressRoute ? route : routeData,
        buf,
        offset,
      );
    }

    // Add body.
    if (msg != null) {
      offset = _encodeMsgBody(msg!, buf, offset);
    }

    return buf.buffer.asUint8List();
  }

  static WSMessage decode(
    Uint8List bytes, {
    bool enabledEncodeString = false,
  }) {
    final bytesLen = bytes.length;
    var offset = 0;
    var id = 0;
    dynamic route;

    // Parse flag.
    final flag = bytes[offset++];
    final compressRoute = flag & msgCompressRouteMask;
    final type = (flag >> 1) & msgTypeMask;

    // Parse id.
    if (_msgHasId(type)) {
      var m = bytes[offset];
      var i = 0;
      do {
        m = bytes[offset];
        id = id + ((m & 0x7f) * pow(2, (7 * i)).toInt());
        offset++;
        i++;
      } while (m >= 128);
    }

    // Parse route.
    if (_msgHasRoute(type)) {
      if (compressRoute > 0) {
        route = (bytes[offset++]) << 8 | bytes[offset++];
      } else {
        final routeLen = bytes[offset++];

        if (routeLen > 0) {
          final routeData = bytes.sublist(offset, routeLen);
          route = WSProtocol.strDecode(
            routeData,
            isCompress: enabledEncodeString,
          );
        } else {
          route = '';
        }
        offset += routeLen;
      }
    }

    // Parse body.
    final body = bytesLen - offset > 0 ? bytes.sublist(offset) : null;

    return WSMessage(
      id,
      type,
      compressRoute > 0,
      route,
      msg: body,
      enabledEncodeString: enabledEncodeString,
    );
  }

  static bool _msgHasId(int type) => type == msgTypeRequest || type == msgTypeResponse;

  int _caculateMsgIdBytes(int id) {
    var len = 0;
    do {
      len += 1;
      id >>= 7;
    } while (id > 0);
    return len;
  }

  static bool _msgHasRoute(int type) => type == msgTypeRequest || type == msgTypeNotify || type == msgTypePush;

  int _encodeMsgFlag(int type, bool compressRoute, ByteData buf, int offset) {
    if (type != msgTypeRequest && type != msgTypeNotify && type != msgTypePush && type != msgTypeResponse) {
      throw Exception('unknown message type: $type');
    }

    buf.setUint8(offset, (type << 1) | (compressRoute ? 1 : 0));
    return offset + msgFlagBytes;
  }

  int _encodeMsgId(int id, ByteData buf, int offset) {
    do {
      var tmp = id % 128;
      final next = (id / 128).floor();
      if (next != 0) {
        tmp = tmp + 128;
      }
      buf.setUint8(offset++, tmp);
      id = next;
    } while (id != 0);
    return offset;
  }

  int _encodeMsgRoute(bool compressRoute, dynamic route, ByteData buf, offset) {
    if (compressRoute) {
      if (route > msgRouteCodeMax) {
        throw Exception('Route number is overflow');
      }
      buf.setUint8(offset++, (route >> 8) & 0xFF);
      buf.setUint8(offset++, route & 0xFF);
    } else {
      final tmp = route as Uint8List;
      buf.setUint8(offset++, tmp.length & 0xFF);
      for (var entry in tmp) {
        buf.setUint8(offset++, entry);
      }
    }
    return offset;
  }

  int _encodeMsgBody(Uint8List msg, ByteData buf, offset) {
    for (var entry in msg) {
      buf.setUint8(offset++, entry);
    }
    return offset;
  }
}

// class WSController {
//   WSController({
//     this.onHandshake,
//     this.onBroadcast,
//     this.onDisconnect,
//   });
//
//
// }
