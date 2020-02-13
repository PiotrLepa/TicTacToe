library error_response;

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@immutable
abstract class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse(
    String code,
    String exception,
    String message,
  ) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
  static const fromJsonFactory = _$ErrorResponseFromJson;
}
