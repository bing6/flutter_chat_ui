import '../protos/proto/passprot.pbserver.dart';
import 'wsclient.dart';
import 'package:example/protos/proto/passprot.pb.dart' as passprot;
import 'package:example/protos/proto/chat.pb.dart' as chat;

extension WSClientLogic on WSClient {
  // Ping.
  Future<dynamic> ping() => requestAsync('sys.ping');

  // 用户鉴权请求.
  Future<passprot.RPCAuthenticationRes> auth(passprot.RPCAuthenticationReq req) async {
    final res = await requestAsync('sys.auth', data: req.writeToBuffer());
    return passprot.RPCAuthenticationRes.fromBuffer(res);
  }

  // 获取当前用户已有的机器人列表.
  Future<chat.RPCRobotListRes> robots() async {
    final res = await requestAsync('game.chat.robots');
    return chat.RPCRobotListRes.fromBuffer(res);
  }

  // 创建新的机器人.
  Future<chat.RPCNewRobotRes> newRobot(chat.RPCNewRobotReq req) async {
    final res = await requestAsync('game.chat.newrobot', data: req.writeToBuffer());
    return chat.RPCNewRobotRes.fromBuffer(res);
  }

  Future<chat.RPCChatMessageRes?> sendMessage(chat.RPCChatMessageReq req) async {
    final res = await requestAsync('game.chat.send', data: req.writeToBuffer());
    print(res);
    return null;
    // return chat.RPCChatMessageRes.fromBuffer(res);
  }
}
