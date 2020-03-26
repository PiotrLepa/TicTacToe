library registration_response;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response.freezed.dart';

@freezed
abstract class RegistrationResponse with _$RegistrationResponse {
  const factory RegistrationResponse({
    @required int id,
    @required String email,
    @required String username,
  }) = _RegistrationResponse;
}
