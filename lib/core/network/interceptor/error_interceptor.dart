import 'package:dio/dio.dart';
import 'package:tictactoe/core/logger/logger.dart';
import 'package:tictactoe/core/network/api_exceptions.dart';
import 'package:tictactoe/core/network/model/error/error_response.dart';

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  Future onError(DioError err) {
    final statusCode = err.response.statusCode;
    var errorResponse;
    try {
      errorResponse = ErrorResponse.fromJson(err.response.data);
    } on TypeError catch (e) {
      logger.e("Error Interceptor: ", e);
      throw UnknownErrorException(
          statusCode, e.message, e.runtimeType.toString());
    } catch (e) {
      logger.e("Error Interceptor: ", e);
      throw UnknownErrorException(statusCode, "", "");
    }
    _throwProperException(statusCode, errorResponse);
    return super.onError(err);
  }

  void _throwProperException(int statusCode, ErrorResponse errorResponse) {
    switch (statusCode) {
      case 400:
        throw DefaultException(
            statusCode, errorResponse.message, errorResponse.exception);
      case 401:
        throw UnauthorizedException(
            statusCode, errorResponse.message, errorResponse.exception);
      case 500:
        throw InternalServerException(
            statusCode, errorResponse.message, errorResponse.exception);
      default:
        throw UnknownErrorException(
            statusCode, errorResponse.message, errorResponse.exception);
    }
  }
}
