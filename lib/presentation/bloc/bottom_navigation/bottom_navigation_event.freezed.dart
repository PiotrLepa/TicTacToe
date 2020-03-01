// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of bottom_navigation_event;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$BottomNavigationEvent {
  int get index;

  BottomNavigationEvent copyWith({int index});
}

class _$BottomNavigationEventTearOff {
  const _$BottomNavigationEventTearOff();

  _OnBottomNavigationTapped onBottomNavigationTapped(int index) {
    return _OnBottomNavigationTapped(
      index,
    );
  }
}

const $BottomNavigationEvent = _$BottomNavigationEventTearOff();

class _$_OnBottomNavigationTapped implements _OnBottomNavigationTapped {
  const _$_OnBottomNavigationTapped(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationEvent.onBottomNavigationTapped(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnBottomNavigationTapped &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$_OnBottomNavigationTapped copyWith({
    Object index = freezed,
  }) {
    return _$_OnBottomNavigationTapped(
      index == freezed ? this.index : index as int,
    );
  }
}

abstract class _OnBottomNavigationTapped implements BottomNavigationEvent {
  const factory _OnBottomNavigationTapped(int index) =
      _$_OnBottomNavigationTapped;

  @override
  int get index;

  @override
  _OnBottomNavigationTapped copyWith({int index});
}
