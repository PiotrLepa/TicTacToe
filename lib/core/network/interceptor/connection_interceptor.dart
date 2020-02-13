import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';

import '../network_exceptions.dart';

class ConnectionInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    bool hasConnection = await DataConnectionChecker().hasConnection;

    if (!hasConnection) {
      throw NoConnectionException();
    }

    return super.onRequest(options);
  }
}
