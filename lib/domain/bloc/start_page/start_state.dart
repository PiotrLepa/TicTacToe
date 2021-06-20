part of 'start_bloc.dart';

@freezed
class StartState with _$StartState {
  const factory StartState.nothing() = Nothing;

  const factory StartState.navigateToRegistration() = NavigateToRegistration;

  const factory StartState.navigateToLogin() = NavigateToLogin;
}
