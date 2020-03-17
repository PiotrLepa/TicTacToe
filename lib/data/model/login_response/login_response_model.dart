library login_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel(
    @JsonKey(name: "access_token") String accessToken,
    @JsonKey(name: "token_type") String tokenType,
    @JsonKey(name: "refresh_token") String refreshToken,
    @JsonKey(name: "expires_in") int expiresIn,
    String scope,
  ) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson();
}
