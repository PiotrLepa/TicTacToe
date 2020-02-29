library login_response;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse(
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String tokenType,
    @JsonKey(name: "refresh_token") String refreshToken,
    @JsonKey(name: "expires_in") int expiresIn,
    String scope,
  ) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  static const fromJsonFactory = _$LoginResponseFromJson;
}
