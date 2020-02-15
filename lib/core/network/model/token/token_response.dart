library network_token;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@freezed
abstract class TokenResponse with _$TokenResponse {
  const factory TokenResponse(
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String tokenType,
    @JsonKey(name: "refresh_token") String refreshToken,
    @JsonKey(name: "expires_in") int expiresIn,
    String scope,
  ) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
  static const fromJsonFactory = _$TokenResponseFromJson;
}
