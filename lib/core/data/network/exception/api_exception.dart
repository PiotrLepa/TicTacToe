library api_exception;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
abstract class ApiException with _$ApiException implements Exception {
  const factory ApiException.noConnection(
      int code, @nullable String printableMessage) = _NoConnection;

  const factory ApiException.badRequest(
      int code, @nullable String printableMessage) = _BadRequest;

  const factory ApiException.unauthorized(
      int code, @nullable String printableMessage) = _Unauthorized;

  const factory ApiException.notFound(
      int code, @nullable String printableMessage) = _NotFound;

  const factory ApiException.internalServerError(
      int code, @nullable String printableMessage) = _InternalServerError;

  const factory ApiException.unknownError(
      int code, @nullable String printableMessage) = _UnknownError;
}
