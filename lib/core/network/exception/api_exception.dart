library api_exception;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
abstract class ApiException with _$ApiException implements Exception {
  const factory ApiException.noConnection(int code, String message) =
      _NoConnection;

  const factory ApiException.badRequest(int code, String message) = _BadRequest;

  const factory ApiException.unauthorized(int code, String message) =
      _Unauthorized;

  const factory ApiException.notFound(int code, String message) = _NotFound;

  const factory ApiException.internalServerError(int code, String message) =
      _InternalServerError;

  const factory ApiException.unknownError(int code, String message) =
      _UnknownError;
}
