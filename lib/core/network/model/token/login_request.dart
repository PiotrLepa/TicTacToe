library login_request;

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_request.freezed.dart';

part 'login_request.g.dart';

@immutable
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    @JsonKey(name: "username") @required String email,
    @required String password,
    @JsonKey(name: "grant_type") @required String grantType,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
  static const fromJsonFactory = _$LoginRequestFromJson;
}
