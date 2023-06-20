import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:example/wsclient/protos/data_info.pb.dart';
import 'package:fixnum/fixnum.dart' as fnum;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mime/mime.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'wsclient/protos/rpc_srv.pb.dart';
import 'wsclient/ws.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: ChatPage(),
      );
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

const String userToken =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiIzNzA1Njk0OTA3NTQzMTAxNDQiLCJzdWIiOjUwMDAsImV4cCI6MTY4OTgzMjI1MSwiaXNzIjoiMzQyNjE1MjYzNjAwMDU0MjcyIiwicmVzIjoyMDAwMDIsInNwYSI6MTc0LCJpc19hZG1pbiI6MCwiaWF0IjoxNjg3MjQwMjUxfQ.v9hxcdfk9RgD46dbIEa4VdI2C64n83SFmKsbsDAC57k';

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  late WSClient _client;

  types.User? _ownerUser;
  types.User? _robotUser;

  // Disconnect message from server.

  @override
  void initState() {
    super.initState();

    final handshakeData = {
      'Sys': {
        'platform': 'mac-1',
        'libVersion': '0.3.5-release', // 抄的.
        'clientBuildNumber': '111',
        'clientVersion': '1.0.0',
      },
      'User': {
        'token': 'ka;lsdfjaskfjkvcz',
      },
    };

    _client = WSClient(handshakeData, debug: true);
    _client.onChatMessage = (message) {
      final textMessage = types.TextMessage(
        author: _robotUser!,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: message.mId,
        text: message.contentData,
      );

      _addMessage(textMessage);
    };
    _client.onHandshake = () async {
      // Timer.periodic(const Duration(seconds: 5), (timer) async {
      //   final res = await _client.ping();
      //   // print(res);
      //   final s = pb.Pong.fromBuffer(res);
      //   print(s);
      // });

      // *** 握手完成后需要立即请求鉴权, 否则多数请求将无法使用
      final r = await _client.auth(userToken);
      if (r.state.code != 200) {
        WSUtil.debug('出错啦! -> ${r.state.msg}', tag: 'Test');
        return;
      }

      WSUtil.debug('授权成功!', tag: 'Test');
      WSUtil.debug('UserID:${r.userId}', tag: 'Test');

      setState(() {
        _ownerUser = types.User(
          id: r.userId.toString(),
          lastName: '小明',
        );
      });

      final robots = await _client.robots();

      WSUtil.debug('当前用户拥有${robots.items.length}个机器人', tag: 'Test');
      if (robots.items.isNotEmpty) {
        for (var item in robots.items) {
          WSUtil.debug("99 => LinkID => ${item.linkId}");
        }

        _robotUser = types.User(
          id: robots.items.first.id.toString(),
          lastName: robots.items.first.name,
        );
        WSUtil.debug('机器人创建成功, 可以开始聊天啦!', tag: 'Test');
        WSUtil.debug('名称:${robots.items.first.name}', tag: 'Test');

        var ms = await _client.getHistoryMessageList(robots.items.first.id.toInt());

        WSUtil.debug('聊天记录:${ms}');
        return;
      }

      final robot = await _client.newRobot(ReqNewRobot(
        name: '小甜甜',
        gender: 0,
        series: 1,
        tags: '制服,大波,碧眼,白发',
        linkId: 3345678,
      ));

      _robotUser = types.User(
        id: robot.data.id.toString(),
        lastName: robot.data.name,
      );
      WSUtil.debug('机器人创建成功, 可以开始聊天啦!', tag: 'Test');
      WSUtil.debug('名称:${robot.data.name}', tag: 'Test');
    };
    _client.onBroadcast = () {};
    _client.onDisconnect = () {
      debugPrint('连接断开啦...');
    };
    _client.onKick = () {
      debugPrint('你被踢下线啦');
    };

    // _client.connect(Uri.parse('ws://10.11.15.64:3051'));
    _client.connect(Uri.parse('ws://8.140.52.132:3051'));

    return;
    // _loadMessages();.
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Chat(
          messages: _messages,
          onAttachmentPressed: _handleAttachmentPressed,
          onMessageTap: _handleMessageTap,
          onPreviewDataFetched: _handlePreviewDataFetched,
          onSendPressed: _handleSendPressed,
          showUserAvatars: true,
          showUserNames: true,
          user: _ownerUser ?? _user,
          showCurrentUserAvatar: true,
        ),
      );

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAttachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4().replaceAll('-', ''),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4().replaceAll('-', ''),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      var localPath = message.uri;

      if (message.uri.startsWith('http')) {
        try {
          final index = _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage = (_messages[index] as types.FileMessage).copyWith(
            isLoading: true,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });

          final client = http.Client();
          final request = await client.get(Uri.parse(message.uri));
          final bytes = request.bodyBytes;
          final documentsDir = (await getApplicationDocumentsDirectory()).path;
          localPath = '$documentsDir/${message.name}';

          if (!File(localPath).existsSync()) {
            final file = File(localPath);
            await file.writeAsBytes(bytes);
          }
        } finally {
          final index = _messages.indexWhere((element) => element.id == message.id);
          final updatedMessage = (_messages[index] as types.FileMessage).copyWith(
            isLoading: null,
          );

          setState(() {
            _messages[index] = updatedMessage;
          });
        }
      }

      await OpenFilex.open(localPath);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = (_messages[index] as types.TextMessage).copyWith(
      previewData: previewData,
    );

    setState(() {
      _messages[index] = updatedMessage;
    });
  }

  void _handleSendPressed(types.PartialText message) async {
    if (_ownerUser == null) {
      WSUtil.debug('用户没有登入哦', tag: 'Test');
      return;
    }
    final textMessage = types.TextMessage(
      author: _ownerUser!,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4().replaceAll('-', ''),
      text: message.text,
    );

    try {
      await _client.sendMessage(ReqChatTextMessage(
        mId: textMessage.id,
        from: fnum.Int64(int.parse(_ownerUser!.id)),
        to: fnum.Int64(int.parse(_robotUser!.id)),
        content: textMessage.text,
        // contentData: textMessage.text,
        // contentType: 1,
      ));
      _addMessage(textMessage);
    } catch (ex) {
      if (ex is WSError) {
        WSUtil.debug(ex.toString());
      } else {
        WSUtil.debug(ex);
      }
    }
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List).map((e) => types.Message.fromJson(e as Map<String, dynamic>)).toList();

    setState(() {
      _messages = messages;
    });
  }
}
