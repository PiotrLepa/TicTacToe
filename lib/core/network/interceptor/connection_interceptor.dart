import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';

import '../api_exceptions.dart';

class ConnectionInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    bool hasConnection = await DataConnectionChecker().hasConnection;

    if (!hasConnection) {
      throw NoConnectionException(-1, "No internet connection", "");
    }

    return super.onRequest(options);
  }
}
