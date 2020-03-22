part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.nothing({
    RawKeyString usernameErrorKey,
    RawKeyString passwordErrorKey,
  }) = Nothing;

  const factory LoginState.renderInputError({
    RawKeyString usernameErrorKey,
    RawKeyString passwordErrorKey,
  }) = RenderInputError;

  const factory LoginState.loading({
    RawKeyString usernameErrorKey,
    RawKeyString passwordErrorKey,
  }) = Loading;
}
