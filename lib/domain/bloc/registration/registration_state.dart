part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.nothing() = Nothing;

  const factory RegistrationState.clearInputsErrors() = ClearInputsErrors;

  const factory RegistrationState.renderInputsErrors({
    RawKeyString? usernameError,
    RawKeyString? emailError,
    RawKeyString? passwordError,
    RawKeyString? repeatedPasswordError,
  }) = RenderInputsErrors;

  const factory RegistrationState.loading() = Loading;

  const factory RegistrationState.showSuccessFlushbar() = ShowSuccessFlushbar;

  const factory RegistrationState.error(RawKeyString errorMessage) = Error;
}
