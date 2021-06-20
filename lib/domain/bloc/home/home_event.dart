part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.appStarted() = AppStarted;

  const factory HomeEvent.onBottomNavigationTapped(int index) =
      OnBottomNavigationTapped;
}
