import 'wsclient.dart';

extension WSClientLogic on WSClient {
  Future<dynamic> ping() => requestAsync('sys.ping');
}
