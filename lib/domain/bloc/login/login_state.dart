part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.nothing({
    PlainLocalizedString? emailError,
    PlainLocalizedString? passwordError,
  }) = Nothing;

  const factory LoginState.renderInputsErrors({
    PlainLocalizedString? emailError,
    PlainLocalizedString? passwordError,
  }) = RenderInputsErrors;

  const factory LoginState.loading({
    PlainLocalizedString? emailError,
    PlainLocalizedString? passwordError,
  }) = Loading;

  const factory LoginState.error(
    PlainLocalizedString errorMessage, {
    PlainLocalizedString? emailError,
    PlainLocalizedString? passwordError,
  }) = Error;

  const factory LoginState.navigateToHome({
    PlainLocalizedString? emailError,
    PlainLocalizedString? passwordError,
  }) = NavigateToHome;
}
