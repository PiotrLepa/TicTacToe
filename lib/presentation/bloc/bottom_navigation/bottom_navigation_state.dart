library bottom_navigation_state;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_state.freezed.dart';

@freezed
abstract class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.updatePage(int index) = _UpdatePage;
}
