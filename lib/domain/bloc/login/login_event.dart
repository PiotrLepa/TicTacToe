part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = Started;

  const factory LoginEvent.login({
    @required String email,
    @required String password,
  }) = Login;
}
