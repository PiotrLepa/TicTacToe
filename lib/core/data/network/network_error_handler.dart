import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/common/router/router.gr.dart';
import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/core/data/network/exception/api/api_exception.dart';
import 'package:tictactoe/core/data/network/exception/internal/internal_exception.dart';
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

  ApiException _mapError(DioError dioError) {
    final error = dioError.error;
    if (error is InternalException) {
      if (error is SessionExpired) {
        handleExpiredSession();
      }
      return error.map(
        noConnection: (_) => ApiException.noConnection(-1, null),
        sessionExpired: (_) => ApiException.unauthorized(401, null),
      );
    }
    final response = dioError.response;
    final statusCode = response?.statusCode;
    try {
      final data = response.data;
      convertModelCodePropertyToInt(data);
      var errorResponse = ErrorResponse.fromJson(data);
      final exception = _mapToApiException(statusCode, errorResponse);
      return exception;
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

  void handleExpiredSession() {
    ExtendedNavigator.ofRouter<Router>().pushNamedAndRemoveUntil(
      Routes.startScreen,
      (route) => false,
    );
    getIt<FlushbarHelper>().showError(
      message: KeyString('errorSessionExpired'),
    );
  }
}

extension FutureExtension<T> on Future<T> {
  Future<T> handleNetworkError<T>() {
    final errorHandler = getIt<NetworkErrorHandler>();
    return catchError((e, s) => errorHandler.handleError<T>(e, s)) as Future<T>;
  }
}
