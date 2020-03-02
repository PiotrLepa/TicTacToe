part of 'bottom_navigation_bloc.dart';

@freezed
abstract class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.onBottomNavigationTapped(int index) =
      _OnBottomNavigationTapped;
}
