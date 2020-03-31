import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/core/data/network/exception/api_exception.dart';
import 'package:tictactoe/core/injection/injection.dart';

@lazySingleton
class NetworkErrorHandler {
  Future<T> handleError<T>(dynamic error, StackTrace stackTrace) async {
    logger.e("NetworkErrorHandler", error, stackTrace);
    if (error is DioError) {
      final apiException = _mapError(error);
      return Future.error(apiException);
    } else {
      return Future.error(ApiException.unknownError(-1, null));
    }
  }

  ApiException _mapError(DioError error) {
    final response = error.response;
    final statusCode = response?.statusCode;
    if (statusCode == null) {
      if (error.error is ApiException) {
        return error.error;
      }
      return ApiException.unknownError(-1, null);
    }
    try {
      final data = response.data;
      convertModelCodePropertyToInt(data);
      var errorResponse = ErrorResponse.fromJson(data);
      return _mapToApiException(statusCode, errorResponse);
    } on TypeError catch (e) {
      logger.e(e);
      return ApiException.unknownError(statusCode, null);
    } catch (e) {
      logger.e(e);
      return ApiException.unknownError(statusCode, null);
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
        return ApiException.badRequest(
            statusCode, errorResponse.printableMessage);
      case 401:
        return ApiException.unauthorized(
            statusCode, errorResponse.printableMessage);
      case 500:
        return ApiException.internalServerError(
            statusCode, errorResponse.printableMessage);
      default:
        return ApiException.unknownError(
            statusCode, errorResponse.printableMessage);
    }
  }
}

extension FutureExtension<T> on Future<T> {
  Future<T> handleNetworkError<T>() {
    final errorHandler = getIt<NetworkErrorHandler>();
    return catchError((e, s) => errorHandler.handleError<T>(e, s)) as Future<T>;
  }
}
