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
    @required Result onFieldTapped(int index),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    Result onFieldTapped(int index),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
    @required Result onFieldTapped(OnFieldTapped value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    Result onFieldTapped(OnFieldTapped value),
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

  OnFieldTapped onFieldTapped(int index) {
    return OnFieldTapped(
      index,
    );
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
    @required Result onFieldTapped(int index),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onEasyTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    Result onFieldTapped(int index),
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
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onEasyTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    Result onFieldTapped(OnFieldTapped value),
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
    @required Result onFieldTapped(int index),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onMediumTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    Result onFieldTapped(int index),
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
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onMediumTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    Result onFieldTapped(OnFieldTapped value),
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
    @required Result onFieldTapped(int index),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onHardTapped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    Result onFieldTapped(int index),
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
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onHardTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    Result onFieldTapped(OnFieldTapped value),
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

class _$OnFieldTapped with DiagnosticableTreeMixin implements OnFieldTapped {
  const _$OnFieldTapped(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.onFieldTapped(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.onFieldTapped'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnFieldTapped &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$OnFieldTapped copyWith({
    Object index = freezed,
  }) {
    return _$OnFieldTapped(
      index == freezed ? this.index : index as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onEasyTapped(),
    @required Result onMediumTapped(),
    @required Result onHardTapped(),
    @required Result onFieldTapped(int index),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onFieldTapped(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onEasyTapped(),
    Result onMediumTapped(),
    Result onHardTapped(),
    Result onFieldTapped(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onFieldTapped != null) {
      return onFieldTapped(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onEasyTapped(OnEasyTapped value),
    @required Result onMediumTapped(OnMediumTapped value),
    @required Result onHardTapped(OnHardTapped value),
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(onEasyTapped != null);
    assert(onMediumTapped != null);
    assert(onHardTapped != null);
    assert(onFieldTapped != null);
    return onFieldTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onEasyTapped(OnEasyTapped value),
    Result onMediumTapped(OnMediumTapped value),
    Result onHardTapped(OnHardTapped value),
    Result onFieldTapped(OnFieldTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onFieldTapped != null) {
      return onFieldTapped(this);
    }
    return orElse();
  }
}

abstract class OnFieldTapped implements GameEvent {
  const factory OnFieldTapped(int index) = _$OnFieldTapped;

  int get index;

  OnFieldTapped copyWith({int index});
}

mixin _$GameState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
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

  MoveLoading moveLoading() {
    return const MoveLoading();
  }

  RenderGame renderGame(
      {@required GameMark playerMark, @required BuiltList<GameMove> moves}) {
    return RenderGame(
      playerMark: playerMark,
      moves: moves,
    );
  }

  PlayerWon playerWon() {
    return const PlayerWon();
  }

  ComputerWon computerWon() {
    return const ComputerWon();
  }

  Draw draw() {
    return const Draw();
  }

  Error error(RawKeyString errorMessage) {
    return Error(
      errorMessage,
    );
  }

  MoveError moveError(RawKeyString errorMessage) {
    return MoveError(
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
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return nothing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
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
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
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
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
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
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
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

class _$MoveLoading with DiagnosticableTreeMixin implements MoveLoading {
  const _$MoveLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.moveLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameState.moveLoading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MoveLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return moveLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveLoading != null) {
      return moveLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return moveLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveLoading != null) {
      return moveLoading(this);
    }
    return orElse();
  }
}

abstract class MoveLoading implements GameState {
  const factory MoveLoading() = _$MoveLoading;
}

class _$RenderGame with DiagnosticableTreeMixin implements RenderGame {
  const _$RenderGame({@required this.playerMark, @required this.moves})
      : assert(playerMark != null),
        assert(moves != null);

  @override
  final GameMark playerMark;
  @override
  final BuiltList<GameMove> moves;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.renderGame(playerMark: $playerMark, moves: $moves)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.renderGame'))
      ..add(DiagnosticsProperty('playerMark', playerMark))
      ..add(DiagnosticsProperty('moves', moves));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderGame &&
            (identical(other.playerMark, playerMark) ||
                const DeepCollectionEquality()
                    .equals(other.playerMark, playerMark)) &&
            (identical(other.moves, moves) ||
                const DeepCollectionEquality().equals(other.moves, moves)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(playerMark) ^
      const DeepCollectionEquality().hash(moves);

  @override
  _$RenderGame copyWith({
    Object playerMark = freezed,
    Object moves = freezed,
  }) {
    return _$RenderGame(
      playerMark:
          playerMark == freezed ? this.playerMark : playerMark as GameMark,
      moves: moves == freezed ? this.moves : moves as BuiltList<GameMove>,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return renderGame(playerMark, moves);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderGame != null) {
      return renderGame(playerMark, moves);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return renderGame(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderGame != null) {
      return renderGame(this);
    }
    return orElse();
  }
}

abstract class RenderGame implements GameState {
  const factory RenderGame(
      {@required GameMark playerMark,
      @required BuiltList<GameMove> moves}) = _$RenderGame;

  GameMark get playerMark;
  BuiltList<GameMove> get moves;

  RenderGame copyWith({GameMark playerMark, BuiltList<GameMove> moves});
}

class _$PlayerWon with DiagnosticableTreeMixin implements PlayerWon {
  const _$PlayerWon();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.playerWon()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameState.playerWon'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlayerWon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return playerWon();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playerWon != null) {
      return playerWon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return playerWon(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playerWon != null) {
      return playerWon(this);
    }
    return orElse();
  }
}

abstract class PlayerWon implements GameState {
  const factory PlayerWon() = _$PlayerWon;
}

class _$ComputerWon with DiagnosticableTreeMixin implements ComputerWon {
  const _$ComputerWon();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.computerWon()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameState.computerWon'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ComputerWon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return computerWon();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (computerWon != null) {
      return computerWon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return computerWon(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (computerWon != null) {
      return computerWon(this);
    }
    return orElse();
  }
}

abstract class ComputerWon implements GameState {
  const factory ComputerWon() = _$ComputerWon;
}

class _$Draw with DiagnosticableTreeMixin implements Draw {
  const _$Draw();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.draw()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'GameState.draw'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Draw);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nothing(),
    @required Result loading(),
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return draw();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (draw != null) {
      return draw();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return draw(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (draw != null) {
      return draw(this);
    }
    return orElse();
  }
}

abstract class Draw implements GameState {
  const factory Draw() = _$Draw;
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
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
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
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
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

class _$MoveError with DiagnosticableTreeMixin implements MoveError {
  const _$MoveError(this.errorMessage) : assert(errorMessage != null);

  @override
  final RawKeyString errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameState.moveError(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameState.moveError'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoveError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$MoveError copyWith({
    Object errorMessage = freezed,
  }) {
    return _$MoveError(
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
    @required Result moveLoading(),
    @required
        Result renderGame(
            @required GameMark playerMark, @required BuiltList<GameMove> moves),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
    @required Result error(RawKeyString errorMessage),
    @required Result moveError(RawKeyString errorMessage),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return moveError(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(),
    Result loading(),
    Result moveLoading(),
    Result renderGame(
        @required GameMark playerMark, @required BuiltList<GameMove> moves),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    Result error(RawKeyString errorMessage),
    Result moveError(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveError != null) {
      return moveError(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result loading(Loading value),
    @required Result moveLoading(MoveLoading value),
    @required Result renderGame(RenderGame value),
    @required Result playerWon(PlayerWon value),
    @required Result computerWon(ComputerWon value),
    @required Result draw(Draw value),
    @required Result error(Error value),
    @required Result moveError(MoveError value),
  }) {
    assert(nothing != null);
    assert(loading != null);
    assert(moveLoading != null);
    assert(renderGame != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    assert(error != null);
    assert(moveError != null);
    return moveError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result loading(Loading value),
    Result moveLoading(MoveLoading value),
    Result renderGame(RenderGame value),
    Result playerWon(PlayerWon value),
    Result computerWon(ComputerWon value),
    Result draw(Draw value),
    Result error(Error value),
    Result moveError(MoveError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveError != null) {
      return moveError(this);
    }
    return orElse();
  }
}

abstract class MoveError implements GameState {
  const factory MoveError(RawKeyString errorMessage) = _$MoveError;

  RawKeyString get errorMessage;

  MoveError copyWith({RawKeyString errorMessage});
}
