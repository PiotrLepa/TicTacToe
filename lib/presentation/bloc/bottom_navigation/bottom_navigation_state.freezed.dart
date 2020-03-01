// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of bottom_navigation_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$BottomNavigationState {
  int get index;

  BottomNavigationState copyWith({int index});
}

class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

  _UpdatePage updatePage(int index) {
    return _UpdatePage(
      index,
    );
  }
}

const $BottomNavigationState = _$BottomNavigationStateTearOff();

class _$_UpdatePage implements _UpdatePage {
  const _$_UpdatePage(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavigationState.updatePage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdatePage &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$_UpdatePage copyWith({
    Object index = freezed,
  }) {
    return _$_UpdatePage(
      index == freezed ? this.index : index as int,
    );
  }
}

abstract class _UpdatePage implements BottomNavigationState {
  const factory _UpdatePage(int index) = _$_UpdatePage;

  @override
  int get index;

  @override
  _UpdatePage copyWith({int index});
}
