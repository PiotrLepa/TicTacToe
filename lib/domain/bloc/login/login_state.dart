part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.nothing({
    RawKeyString emailErrorKey,
    RawKeyString passwordErrorKey,
  }) = Nothing;

  const factory LoginState.renderInputsErrors({
    RawKeyString emailErrorKey,
    RawKeyString passwordErrorKey,
  }) = RenderInputsErrors;

  const factory LoginState.loading({
    RawKeyString emailErrorKey,
    RawKeyString passwordErrorKey,
  }) = Loading;

  const factory LoginState.error(
    RawKeyString errorMessage, {
    RawKeyString emailErrorKey,
    RawKeyString passwordErrorKey,
  }) = Error;
}
