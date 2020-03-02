part of 'bottom_navigation_bloc.dart';

@freezed
abstract class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.updatePage({
    @required RawKeyString pageTitle,
    @required int index,
  }) = _UpdatePage;
}
