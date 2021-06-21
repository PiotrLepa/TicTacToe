part of 'session_bloc.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.nothing() = Nothing;

  const factory SessionState.navigateToStart() = NavigateToStart;
}
