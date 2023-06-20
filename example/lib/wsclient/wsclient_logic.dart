import 'dart:ffi';

import 'protos/data_info.pb.dart';
import 'protos/rpc_srv.pb.dart';
import 'wsclient.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

extension WSClientLogic on WSClient {
  // Ping.
  Future<dynamic> ping() => requestAsync('sys.ping');

  // 用户鉴权请求.
  Future<ResAuthentication> auth(String token) async {
    final req = ReqAuthentication(token: token);
    final res = await requestAsync('sys.auth', data: req.writeToBuffer());
    return ResAuthentication.fromBuffer(res);
  }

  // 获取当前用户已有的机器人列表.
  Future<ResRobotList> robots() async {
    final res = await requestAsync('game.chat.newrobots');
    if (res == null) {
      return ResRobotList();
    }
    return ResRobotList.fromBuffer(res);
  }

  // 创建新的机器人.
  Future<ResNewRobot> newRobot(ReqNewRobot req) async {
    final res = await requestAsync('game.chat.newrobot', data: req.writeToBuffer());
    return ResNewRobot.fromBuffer(res);
  }

  Future<ResChatMessage?> sendMessage(ReqChatTextMessage req) async {
    final res = await requestAsync('game.chat.send', data: req.writeToBuffer());
    return ResChatMessage.fromBuffer(res);
  }

  // 获取历史聊天记录.
  Future<ResChatListData> getHistoryMessageList(int groupId, {int offsetId = 0, int limit = 10}) async {
    final gid = $fixnum.Int64(groupId);
    final oid = $fixnum.Int64(offsetId);
    final req = ReqChatListArgs(groupId: gid, offsetId: oid, limit: limit);
    final res = await requestAsync('game.chat.history', data: req.writeToBuffer());
    return ResChatListData.fromBuffer(res);
  }
}
