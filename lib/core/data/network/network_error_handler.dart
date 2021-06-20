import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/core/data/network/exception/api/api_exception.dart';
import 'package:tictactoe/core/data/network/exception/internal/internal_exception.dart';
import 'package:tictactoe/core/injection/injection.dart';

@lazySingleton
class NetworkErrorHandler {
  Future<T> handleError<T>(dynamic error, StackTrace stackTrace) async {
    logger.e('NetworkErrorHandler', error, stackTrace);
    if (error is DioError) {
      final apiException = _mapError(error);
      return Future.error(apiException);
    } else {
      return Future.error(const ApiException.unknownError());
    }
  }

  ApiException _mapError(DioError dioError) {
    final dynamic error = dioError.error;
    if (error is InternalException) {
      if (error is SessionExpired) {
        handleExpiredSession();
      }
      return error.map(
        noConnection: (mappedState) => const ApiException.noConnection(),
        sessionExpired: (mappedState) => const ApiException.unauthorized(401),
      );
    }
    final response = dioError.response;
    final statusCode = response?.statusCode;
    try {
      final data = response!.data as Map<String, dynamic>; // TODO check cast
      convertModelCodePropertyToInt(data);
      final errorResponse = ErrorResponse.fromJson(data);
      final exception = _mapToApiException(statusCode, errorResponse);
      return exception;
      // ignore: avoid_catching_errors
    } on TypeError catch (e) {
      logger.e(e);
      return ApiException.unknownError(statusCode);
    } catch (e) {
      logger.e(e);
      return ApiException.unknownError(statusCode);
    }
  }

  dynamic convertModelCodePropertyToInt(Map<String, dynamic> data) {
    // TODO better way?
    final dynamic code = data['code'];
    if (code is String) {
      data['code'] = int.parse(data['code'] as String);
    }
  }

  ApiException _mapToApiException(
      int? statusCode, ErrorResponse errorResponse) {
    switch (statusCode) {
      case 400:
        return ApiException.badRequest(
            statusCode!, errorResponse.printableMessage);
      case 401:
        return ApiException.unauthorized(
            statusCode!, errorResponse.printableMessage);
      case 500:
        return ApiException.internalServerError(
            statusCode!, errorResponse.printableMessage);
      default:
        return ApiException.unknownError(
            statusCode, errorResponse.printableMessage);
    }
  }

  void handleExpiredSession() {
    // TODO handle session expiration
    // ExtendedNavigator.ofRouter<Router>().pushNamedAndRemoveUntil(
    //   Routes.startScreen,
    //   (route) => false,
    // );
    // getIt<FlushbarHelper>().showError(
    //   message: KeyString('errorSessionExpired'),
    // );
  }
}

extension NetworkErrorHandlerFutureExtension<T> on Future<T> {
  Future<T> handleNetworkError() {
    final errorHandler = getIt<NetworkErrorHandler>();
    return catchError(
      (dynamic e, StackTrace s) => errorHandler.handleError<T>(e, s),
    );
  }
}
