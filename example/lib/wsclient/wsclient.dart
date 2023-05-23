// Handshake represents a handshake: request(client) <====> handshake response(server).
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'protos/data_info.pb.dart';
import 'protos/error.pb.dart' as pitaya;

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

const msgCompressRouteMask = 0x01;
const msgTypeMask = 0x7;
const msgGzipMask = 0x10;
const msgErrorMask = 0x20;
const msgRouteLengthMask = 0xFF;
const msgHeadLength = 0x02;
// errorMask            = 0x20
// gzipMask             = 0x10
// msgRouteCompressMask = 0x01
// msgTypeMask          = 0x07
// msgRouteLengthMask   = 0xFF
// msgHeadLength        = 0x02

// RPC请求回调. 序列化方式为Json时，返回Map, 为protoc时返回UInt8List.
typedef WSRequestHandler = void Function(dynamic res, Exception? error);

// 握手完成通知.
typedef WSControllerOnHandshake = void Function();
// 广播接收通知.
typedef WSControllerOnBroadcast = void Function();
// 接收到消息通用.
typedef WSControllerOnMessage = void Function(ChatMessageInfo message);
// 断开连接通知.
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
    WSUtil.enabledPrintDebug = debug;

    _map = {
      // 接收握手信息.
      pkgTypeHandshake: _onHandshakeHandler,
      pkgTypeHeartbeat: _onHeartbeatHandler,
      pkgTypeData: _onDataHandler,
      pkgTypeKick: _onKickHandler,
    };
  }

  WSControllerOnHandshake? onHandshake;
  WSControllerOnBroadcast? onBroadcast;
  WSControllerOnDisconnect? onDisconnect;
  WSControllerOnMessage? onChatMessage;

  // 握手信息.
  final dynamic handshakeData;

  // Socket连接.
  WebSocketChannel? _channel;

  // 是否启用字符串压缩.
  final bool _compress = true;

  // 是否连接.
  bool _connected = false;

  // 回调对应处理方法.
  late Map<int, Function(WSPackage)> _map;

  // 握手后拿到的压缩路由列表.
  late Map<String, int> _dict;

  // 心跳时间间隔.
  final int _heartbeat = 10;

  // 心跳.
  Timer? _heartbeatTimer;

  // 请求保存列表,用于回调处理.
  final _reqCached = <int, WSCallbackObject>{};

  // 请求ID.
  int _reqId = 0;

  // 是否启用压缩路由.
  bool _compressRoute = false;

  // 通讯返回数据的序列化方式.
  String _serializer = 'json';

  // 是否连接中.
  bool connected() => _connected;

  // 连接服务器.
  bool connect(Uri uri) {
    try {
      _channel = WebSocketChannel.connect(uri);
      _channel!.stream.listen(
        _onReceiveHandler,
        onError: _onErrorHandler,
        onDone: _onDoneHandler,
      );
      _connected = true;
    } catch (e) {
      debugPrint('Connection exception:$e');
      return false;
    }

    // 发送握手请求.
    final package = WSPackage.handshakePackage(handshakeData);
    _sendWithPackage(package, debug: true);
    return true;
  }

  void disconect() {
    if (_connected) {
      _onDoneHandler();
    }
  }

  // RPC请求.
  void request(String route, {Uint8List? data, WSRequestHandler? callback}) {
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

    _reqCached[msg.id] = WSCallbackObject(callback: callback);

    _sendWithPackage(package);
  }

  // 异步执行的RPC请求.
  Future<dynamic> requestAsync(String route, {Uint8List? data}) {
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
    final completer = Completer<dynamic>();

    _sendWithPackage(package);
    _reqCached[msg.id] = WSCallbackObject(completer: completer);
    return completer.future;
  }

  void _sendWithPackage(WSPackage package, {bool debug = false}) {
    if (!_connected) return;
    // WSUtil.debug(package.toString(), tag: 'SendPackage', debug: debug);
    _channel?.sink.add(package.encode());
  }

  void _onReceiveHandler(event) {
    if (event.runtimeType is String) {
      WSUtil.debug('暂不处理字符串类型的消息 -> $event');
    } else if (event is Uint8List) {
      final packages = WSPackage.decode(event);

      for (var entry in packages) {
        // WSUtil.debug(entry.toString(), tag: 'ReceiveData');.
        if (_map.containsKey(entry.type)) {
          _map[entry.type]?.call(entry);
        } else {
          WSUtil.debug('Type "${entry.type}" is not define.');
        }
      }
    }
  }

  void _onHandshakeHandler(WSPackage pkg) {
    WSUtil.debug('Successfully saved handshake data.', tag: 'Handshake');
    if (pkg.body != null) {
      final result = WSUtil.strDecode(pkg.body!, isCompress: _compress);
      final data = json.decode(result);
      _dict = data['sys']['dict'].cast<String, int>();
      _serializer = data['sys']['serializer'] as String;
    }
    // 发送已确认信息.
    final package = WSPackage.handshakeACKPackage();
    _sendWithPackage(package);
    // 开启定时心跳, 防止被踢.
    _heartbeatTimer = Timer.periodic(Duration(seconds: _heartbeat), (timer) {
      _sendWithPackage(WSPackage.heartbeatPackage());
    });
    // 通知握手完成.
    onHandshake?.call();
  }

  void _onHeartbeatHandler(WSPackage _) {
    // WSUtil.debug('Server heartbeat.', tag: 'Heartbeat');.
  }

  void _onDataHandler(WSPackage pkg) {
    final msgData = WSMessage.decode(pkg.body!, enabledEncodeString: false);
    final msgError = msgData.first as bool;
    final msg = msgData.last as WSMessage;

    dynamic payload;
    Exception? err;

    if (_serializer == 'json') {
      try {
        final jStr = utf8.decode(msg.msg!);
        payload = json.decode(jStr);
      } catch (ex) {
        err = ex as Exception;
      }
    } else if (_serializer == 'protobuf') {
      payload = msg.msg;
    } else {
      WSUtil.debug('Unknown serialization', tag: 'Parse');
    }

    WSUtil.debug(msg.toString(), tag: 'ReceiveMessage');

    if (msgError) {
      final pError = pitaya.Error.fromBuffer(msg.msg!);
      err = WSError(pError.code, pError.msg, metadata: pError.metadata);
    }
    if (msg.type == msgTypeResponse) {
      if (!_reqCached.containsKey(msg.id)) {
        return;
      }
      final task = _reqCached[msg.id];
      _reqCached.remove(msg.id);

      if (task!.callback != null) {
        task.callback!.call(payload, err);
      }
      if (task.completer != null) {
        if (err != null) {
          task.completer?.completeError(err);
        } else {
          task.completer?.complete(payload);
        }
      }
    } else if (msg.type == msgTypePush) {
      if (msg.route == 'game.chat.onmessage') {
        final chatMsg = ChatMessageInfo.fromBuffer(msg.msg!);
        onChatMessage?.call(chatMsg);
        // onChatMessage?.call(msg.msg!);
      }
    }
  }

  void _onKickHandler(WSPackage _) {}

  void _onErrorHandler(e) {
    WSUtil.debug('Socket exception:$e');
  }

  void _onDoneHandler() {
    WSUtil.debug('Connect close.', tag: 'Done');

    _heartbeatTimer?.cancel();
    _heartbeatTimer = null;
    _connected = false;

    onDisconnect?.call();
  }
}

class WSUtil {
  static bool enabledPrintDebug = true;

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

  static void debug(dynamic out, {String? tag, bool debug = false}) {
    if (!(enabledPrintDebug || debug)) return;
    if (tag != null) {
      debugPrint('[WS-$tag]: $out');
    } else {
      debugPrint('[WS]: $out');
    }
  }
}

// 数据包.
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
      final body = length > 0 ? bytes.sublist(offset, offset + length) : null;
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

// 消息内容.
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
        routeData = WSUtil.strEncode(route, isCompress: enabledEncodeString);
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

  static List decode(
    Uint8List bytes, {
    bool enabledEncodeString = false,
  }) {
    final data = ByteData.sublistView(bytes);
    final bytesLen = data.lengthInBytes;

    var offset = 0;
    var id = 0;
    dynamic route;

    final flag = data.getInt8(offset++);
    final compressRoute = flag & msgCompressRouteMask;
    final dataGzip = flag & msgGzipMask;
    final type = (flag >> 1) & msgTypeMask;
    final error = flag & msgErrorMask;

    // Parse id.
    if (_msgHasId(type)) {
      var m = data.getInt8(offset);
      var i = 0;
      do {
        m = data.getInt8(offset);
        id = id + ((m & 0x7f) * pow(2, (7 * i)).toInt());
        offset++;
        i++;
      } while (m >= 128);
    }

    // Parse route.
    if (_msgHasRoute(type)) {
      if (compressRoute > 0) {
        route = data.getInt8(offset++) << 8 | data.getInt8(offset++);
      } else {
        final routeLen = data.getInt8(offset++);

        if (routeLen > 0) {
          final routeBytes = Uint8List(routeLen);
          for (var i = 0; i < routeLen; i++) {
            routeBytes[i] = data.getInt8(offset + i);
          }
          route = WSUtil.strDecode(routeBytes, isCompress: enabledEncodeString);
        } else {
          route = '';
        }
        offset += routeLen;
      }
    }

    dynamic body;

    final payloadLength = bytesLen - offset;
    if (payloadLength > 0) {
      final payloadBytes = Uint8List(payloadLength);
      for (var i = 0; i < payloadLength; i++) {
        payloadBytes[i] = data.getInt8(offset + i);
      }
      if (dataGzip > 0) {
        body = ZLibDecoder().convert(payloadBytes);
      } else {
        body = payloadBytes;
      }
    }

    final res = WSMessage(
      id,
      type,
      compressRoute > 0,
      route,
      msg: body,
      enabledEncodeString: enabledEncodeString,
    );
    return [error > 0, res];
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

// RPC回调信息.
class WSCallbackObject {
  WSCallbackObject({this.completer, this.callback});

  // 处理异步请求.
  Completer<dynamic>? completer;

  // 处理回调方法.
  WSRequestHandler? callback;
}

class WSError implements Exception {
  WSError(
    this.code,
    this.msg, {
    this.metadata,
  });

  String code;
  String msg;
  Map<String, String>? metadata;

  static WSError createWithPitayaError(pitaya.Error error) => WSError(
        error.code,
        error.msg,
        metadata: error.metadata,
      );

  @override
  String toString() => 'Code:$code Msg:$msg Metadata:$metadata';
}
