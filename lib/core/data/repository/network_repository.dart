import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/core/data/network/exception/api_exception.dart';

class NetworkRepository {
  Future<E> call<E, M>({
    @required Future<M> request,
    @required E mapper(M data),
  }) async {
    try {
      final responseData = await request;
      final mapped = mapper(responseData);
      return Future.value(mapped);
    } on DioError catch (e, s) {
      logger.e("error", e, s);
      return Future.error(_handleError(e));
    }
  }

  ApiException _handleError(DioError error) {
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
