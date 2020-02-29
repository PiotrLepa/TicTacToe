library login_request;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/data/serializer/serializable.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
abstract class LoginRequest extends Serializable with _$LoginRequest {
  const factory LoginRequest({
    @JsonKey(name: "username") @required String email,
    @required String password,
    @JsonKey(name: "grant_type") @required String grantType,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
  static const fromJsonFactory = _$LoginRequestFromJson;
}
