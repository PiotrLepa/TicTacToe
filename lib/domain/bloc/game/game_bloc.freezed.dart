// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$GameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  });
}

class _$GameEventTearOff {
  const _$GameEventTearOff();

  OnEasyTapped onEasyTapped() {
    return const OnEasyTapped();
  }

  OnMediumTapped onMediumTapped() {
    return const OnMediumTapped();
  }

  OnHardTapped onHardTapped() {
    return const OnHardTapped();
  }
}

const $GameEvent = _$GameEventTearOff();

class _$OnEasyTapped with DiagnosticableTreeMixin implements OnEasyTapped {
  const _$OnEasyTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.onEasyTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameEvent.onEasyTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnEasyTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onEasyTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onEasyTapped != null) {
      return onEasyTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onEasyTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onEasyTapped != null) {
      return onEasyTapped(this);
    }
    return orElse();
  }
}

abstract class OnEasyTapped implements GameEvent {
  const factory OnEasyTapped() = _$OnEasyTapped;
}

class _$OnMediumTapped with DiagnosticableTreeMixin implements OnMediumTapped {
  const _$OnMediumTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.onMediumTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameEvent.onMediumTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnMediumTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onMediumTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onMediumTapped != null) {
      return onMediumTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onMediumTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onMediumTapped != null) {
      return onMediumTapped(this);
    }
    return orElse();
  }
}

abstract class OnMediumTapped implements GameEvent {
  const factory OnMediumTapped() = _$OnMediumTapped;
}

class _$OnHardTapped with DiagnosticableTreeMixin implements OnHardTapped {
  const _$OnHardTapped();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.onHardTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameEvent.onHardTapped'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnHardTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onHardTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onHardTapped != null) {
      return onHardTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    return onHardTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onHardTapped != null) {
      return onHardTapped(this);
    }
    return orElse();
  }
}

abstract class OnHardTapped implements GameEvent {
  const factory OnHardTapped() = _$OnHardTapped;
}

mixin _$GameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result gameCreated(int gameId, GameMark playerMark),
    @required Result error(RawKeyString errorMessage),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result gameCreated(int gameId, GameMark playerMark),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result gameCreated(GameCreated value),
    @required Result error(Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result gameCreated(GameCreated value),
    Result error(Error value),
    @required Result orElse(),
  });
}

class _$GameStateTearOff {
  const _$GameStateTearOff();

  Nothing nothing() {
    return const Nothing();
  }

  Loading loading() {
    return const Loading();
  }

  GameCreated gameCreated(int gameId, GameMark playerMark) {
    return GameCreated(
      gameId,
      playerMark,
    );
  }

  Error error(RawKeyString errorMessage) {
    return Error(
      errorMessage,
    );
  }
}

const $GameState = _$GameStateTearOff();

class _$Nothing with DiagnosticableTreeMixin implements Nothing {
  const _$Nothing();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.nothing()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameState.nothing'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Nothing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result gameCreated(int gameId, GameMark playerMark),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return nothing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result gameCreated(int gameId, GameMark playerMark),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result gameCreated(GameCreated value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result gameCreated(GameCreated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing(this);
    }
    return orElse();
  }
}

abstract class Nothing implements GameState {
  const factory Nothing() = _$Nothing;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result gameCreated(int gameId, GameMark playerMark),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result gameCreated(int gameId, GameMark playerMark),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result gameCreated(GameCreated value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result gameCreated(GameCreated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements GameState {
  const factory Loading() = _$Loading;
}

class _$GameCreated with DiagnosticableTreeMixin implements GameCreated {
  const _$GameCreated(this.gameId, this.playerMark)
      : assert(gameId != null),
        assert(playerMark != null);

  @override
  final int gameId;
  @override
  final GameMark playerMark;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.gameCreated(gameId: $gameId, playerMark: $playerMark)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.gameCreated'))
      ..add(DiagnosticsProperty('gameId', gameId))
      ..add(DiagnosticsProperty('playerMark', playerMark));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GameCreated &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.playerMark, playerMark) ||
                const DeepCollectionEquality()
                    .equals(other.playerMark, playerMark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameId) ^
      const DeepCollectionEquality().hash(playerMark);

  @override
  _$GameCreated copyWith({
    Object gameId = freezed,
    Object playerMark = freezed,
  }) {
    return _$GameCreated(
      gameId == freezed ? this.gameId : gameId as int,
      playerMark == freezed ? this.playerMark : playerMark as GameMark,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result gameCreated(int gameId, GameMark playerMark),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return gameCreated(gameId, playerMark);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result gameCreated(int gameId, GameMark playerMark),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gameCreated != null) {
      return gameCreated(gameId, playerMark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result gameCreated(GameCreated value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return gameCreated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result gameCreated(GameCreated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gameCreated != null) {
      return gameCreated(this);
    }
    return orElse();
  }
}

abstract class GameCreated implements GameState {
  const factory GameCreated(int gameId, GameMark playerMark) = _$GameCreated;

  int get gameId;
  GameMark get playerMark;

  GameCreated copyWith({int gameId, GameMark playerMark});
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final RawKeyString errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.error'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$Error copyWith({
    Object errorMessage = freezed,
  }) {
    return _$Error(
      errorMessage == freezed
          ? this.errorMessage
          : errorMessage as RawKeyString,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result gameCreated(int gameId, GameMark playerMark),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result gameCreated(int gameId, GameMark playerMark),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result gameCreated(GameCreated value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(gameCreated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result gameCreated(GameCreated value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GameState {
  const factory Error(RawKeyString errorMessage) = _$Error;

  RawKeyString get errorMessage;

  Error copyWith({RawKeyString errorMessage});
}
