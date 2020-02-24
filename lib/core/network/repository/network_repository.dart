import 'package:dio/dio.dart';
import 'package:tictactoe/core/logger/logger.dart';
import 'package:tictactoe/core/network/exception/api_exception.dart';
import 'package:tictactoe/core/network/model/error/error_response.dart';

class NetworkRepository {
  Future<T> call<T>(Future<Response<T>> call) async {
    try {
      final response = await call;
      return Future.value(response.data);
    } on DioError catch (e) {
      return Future.error(_handleError(e));
    }
  }

  ApiException _handleError(DioError error) {
    final response = error.response;
    final statusCode = response?.statusCode;
    if (statusCode == null) {
      return ApiException.unknownError(-1, error.message);
    }
    try {
      final data = response.data;
      convertModelCodePropertyToInt(data);
      var errorResponse = ErrorResponse.fromJson(data);
      return _mapToApiException(statusCode, errorResponse);
    } on TypeError catch (e) {
      logger.e(e);
      return ApiException.unknownError(statusCode, e.message);
    } catch (e) {
      logger.e(e);
      return ApiException.unknownError(statusCode, "");
    }
  }

  dynamic convertModelCodePropertyToInt(data) {
    final code = data["code"];
    if (code is String) {
      data["code"] = int.parse(data["code"]);
    }
  }

  ApiException _mapToApiException(int statusCode, ErrorResponse errorResponse) {
    switch (statusCode) {
      case 400:
        return ApiException.badRequest(statusCode, errorResponse.message);
      case 401:
        return ApiException.unauthorized(statusCode, errorResponse.message);
      case 500:
        return ApiException.internalServerError(
            statusCode, errorResponse.message);
      default:
        return ApiException.unknownError(statusCode, errorResponse.message);
    }
  }
}
