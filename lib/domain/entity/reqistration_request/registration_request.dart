library registration_request;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_request.freezed.dart';

@freezed
abstract class RegistrationRequest with _$RegistrationRequest {
  const factory RegistrationRequest({
    @required String email,
    @required String username,
    @required String password,
    @required String repeatedPassword,
  }) = _RegistrationRequest;
}
