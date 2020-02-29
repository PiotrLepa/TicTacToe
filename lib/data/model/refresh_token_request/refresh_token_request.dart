library refresh_token_request;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/data/serializer/serializable.dart';

part 'refresh_token_request.freezed.dart';
part 'refresh_token_request.g.dart';

@freezed
abstract class RefreshTokenRequest extends Serializable
    with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    @JsonKey(name: "refresh_token") @required String refreshToken,
    @JsonKey(name: "grant_type") @required String grantType,
  }) = _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
  static const fromJsonFactory = _$RefreshTokenRequestFromJson;
}
