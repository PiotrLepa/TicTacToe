library refresh_token_response;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_response.freezed.dart';

part 'refresh_token_response.g.dart';

@freezed
abstract class RefreshTokenResponse with _$RefreshTokenResponse {
  const factory RefreshTokenResponse(
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String tokenType,
    @JsonKey(name: "refresh_token") String refreshToken,
    @JsonKey(name: "expires_in") int expiresIn,
    String scope,
  ) = _RefreshTokenResponse;

  factory RefreshTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenResponseFromJson(json);
  static const fromJsonFactory = _$RefreshTokenResponseFromJson;
}
