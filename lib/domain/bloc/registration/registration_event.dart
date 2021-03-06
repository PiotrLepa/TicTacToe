part of 'registration_bloc.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.register({
    @required String username,
    @required String email,
    @required String password,
    @required String repeatedPassword,
  }) = Register;
}
