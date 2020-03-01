library bottom_navigation_event;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.freezed.dart';

@freezed
abstract class BottomNavigationEvent with _$BottomNavigationEvent {
  const factory BottomNavigationEvent.onBottomNavigationTapped(int index) =
      _OnBottomNavigationTapped;
}
