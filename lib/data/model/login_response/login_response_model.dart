import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    @JsonKey(name: "access_token") required String accessToken,
    @JsonKey(name: "token_type") required String tokenType,
    @JsonKey(name: "refresh_token") required String refreshToken,
    @JsonKey(name: "expires_in") required int expiresIn,
    required String scope,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  static const fromJsonFactory = _$LoginResponseModelFromJson;
}
