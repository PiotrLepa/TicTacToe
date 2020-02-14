import 'package:dio/dio.dart';
import 'package:tictactoe/core/logger/logger.dart';
import 'package:tictactoe/core/network/model/error/error_response.dart';

import '../api_exceptions.dart';

class NetworkRepository {
  Future<T> call<T>(Future<Response<T>> call()) async {
    try {
      final response = await call();
      return Future.value(response.data);
    } on DioError catch (e) {
      Future.error(_handleError(e));
    }
  }

  ApiException _handleError(DioError error) {
    final response = error.response;
    final statusCode = response.statusCode;
    var errorResponse;
    try {
      errorResponse = ErrorResponse.fromJson(response.data);
      return _mapToApiException(statusCode, errorResponse);
    } on TypeError catch (e) {
      logger.e(e);
      return UnknownErrorException(
          statusCode, e.message, e.runtimeType.toString());
    } catch (e) {
      logger.e(e);
      return UnknownErrorException(statusCode, "", "");
    }
  }

  ApiException _mapToApiException(int statusCode, ErrorResponse errorResponse) {
    switch (statusCode) {
      case 400:
        return DefaultException(
            statusCode, errorResponse.message, errorResponse.exception);
      case 401:
        return UnauthorizedException(
            statusCode, errorResponse.message, errorResponse.exception);
      case 500:
        return InternalServerException(
            statusCode, errorResponse.message, errorResponse.exception);
      default:
        return UnknownErrorException(
            statusCode, errorResponse.message, errorResponse.exception);
    }
  }
}
