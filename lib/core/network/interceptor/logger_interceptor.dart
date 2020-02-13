import 'package:dio/dio.dart';
import 'package:tictactoe/core/logger/logger.dart';

class LoggerInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    logger.d("Request\n\n"
        "${options.method} ${options.uri}\n\n"
        "Headers: ${prettyJson(options.headers)}\n\n"
        "Json: ${prettyJson(options.data)}");
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    logger.d("Response\n\n"
        "${response.statusCode} ${response.request.method} ${response.request.uri}\n\n"
        "Json: ${prettyJson(response.data)}");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    final response = err.response;
    logger.d("Network error\n\n"
        "${response.statusCode} ${response.request.method} ${response.request.uri}\n\n"
        "Error: ${err.toString()}\n\n"
        "Json: ${prettyJson(response.data)}");
    return super.onError(err);
  }
}