// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'bottom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$BottomNavigationEvent {
  int get index;

  BottomNavigationEvent copyWith({int index});
}

class _$BottomNavigationEventTearOff {
  const _$BottomNavigationEventTearOff();

  OnBottomNavigationTapped onBottomNavigationTapped(int index) {
    return OnBottomNavigationTapped(
      index,
    );
  }
}

const $BottomNavigationEvent = _$BottomNavigationEventTearOff();

class _$OnBottomNavigationTapped implements OnBottomNavigationTapped {
  const _$OnBottomNavigationTapped(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.onBottomNavigationTapped(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBottomNavigationTapped &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$OnBottomNavigationTapped copyWith({
    Object index = freezed,
  }) {
    return _$OnBottomNavigationTapped(
      index == freezed ? this.index : index as int,
    );
  }
}

abstract class OnBottomNavigationTapped implements BottomNavigationEvent {
  const factory OnBottomNavigationTapped(int index) =
      _$OnBottomNavigationTapped;

  @override
  int get index;

  @override
  OnBottomNavigationTapped copyWith({int index});
}

mixin _$BottomNavigationState {
  RawKeyString get pageTitle;
  int get index;

  BottomNavigationState copyWith({RawKeyString pageTitle, int index});
}

class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

  UpdatePage updatePage(
      {@required RawKeyString pageTitle, @required int index}) {
    return UpdatePage(
      pageTitle: pageTitle,
      index: index,
    );
  }
}

const $BottomNavigationState = _$BottomNavigationStateTearOff();

class _$UpdatePage implements UpdatePage {
  const _$UpdatePage({@required this.pageTitle, @required this.index})
      : assert(pageTitle != null),
        assert(index != null);

  @override
  final RawKeyString pageTitle;
  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationState.updatePage(pageTitle: $pageTitle, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePage &&
            (identical(other.pageTitle, pageTitle) ||
                const DeepCollectionEquality()
                    .equals(other.pageTitle, pageTitle)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageTitle) ^
      const DeepCollectionEquality().hash(index);

  @override
  _$UpdatePage copyWith({
    Object pageTitle = freezed,
    Object index = freezed,
  }) {
    return _$UpdatePage(
      pageTitle:
          pageTitle == freezed ? this.pageTitle : pageTitle as RawKeyString,
      index: index == freezed ? this.index : index as int,
    );
  }
}

abstract class UpdatePage implements BottomNavigationState {
  const factory UpdatePage(
      {@required RawKeyString pageTitle, @required int index}) = _$UpdatePage;

  @override
  RawKeyString get pageTitle;
  @override
  int get index;

  @override
  UpdatePage copyWith({RawKeyString pageTitle, int index});
}
