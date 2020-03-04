// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'start_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$StartGameEvent {}

class _$StartGameEventTearOff {
  const _$StartGameEventTearOff();

  _OnStartGameTapped onStartGameTapped() {
    return const _OnStartGameTapped();
  }
}

const $StartGameEvent = _$StartGameEventTearOff();

class _$_OnStartGameTapped implements _OnStartGameTapped {
  const _$_OnStartGameTapped();

  @override
  String toString() {
    return 'StartGameEvent.onStartGameTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnStartGameTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _OnStartGameTapped implements StartGameEvent {
  const factory _OnStartGameTapped() = _$_OnStartGameTapped;
}

mixin _$StartGameState {}

class _$StartGameStateTearOff {
  const _$StartGameStateTearOff();

  _Nothing nothing() {
    return const _Nothing();
  }
}

const $StartGameState = _$StartGameStateTearOff();

class _$_Nothing implements _Nothing {
  const _$_Nothing();

  @override
  String toString() {
    return 'StartGameState.nothing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Nothing);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _Nothing implements StartGameState {
  const factory _Nothing() = _$_Nothing;
}
