library login_request_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/common/serialization/serializable.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
abstract class LoginRequestModel
    with _$LoginRequestModel
    implements Serializable {
  const factory LoginRequestModel({
    @JsonKey(name: "username") @required String email,
    @required String password,
    @JsonKey(name: "grant_type") @required String grantType,
    @JsonKey(name: "device_token") @required String deviceToken,
  }) = _LoginRequestModel;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);

  Map<String, dynamic> toJson();
}
