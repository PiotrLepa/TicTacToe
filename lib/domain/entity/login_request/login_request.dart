library login_request;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    @required String email,
    @required String password,
    @required String grantType,
  }) = _LoginRequest;
}
