// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GameEventTearOff {
  const _$GameEventTearOff();

  CreateGame createGame(DifficultyLevel difficultyLevel) {
    return CreateGame(
      difficultyLevel,
    );
  }

  RestartGame restartGame(DifficultyLevel difficultyLevel) {
    return RestartGame(
      difficultyLevel,
    );
  }

  OnFieldTapped onFieldTapped(int index) {
    return OnFieldTapped(
      index,
    );
  }
}

// ignore: unused_element
const $GameEvent = _$GameEventTearOff();

mixin _$GameEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createGame(DifficultyLevel difficultyLevel),
    @required Result restartGame(DifficultyLevel difficultyLevel),
    @required Result onFieldTapped(int index),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createGame(DifficultyLevel difficultyLevel),
    Result restartGame(DifficultyLevel difficultyLevel),
    Result onFieldTapped(int index),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createGame(CreateGame value),
    @required Result restartGame(RestartGame value),
    @required Result onFieldTapped(OnFieldTapped value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createGame(CreateGame value),
    Result restartGame(RestartGame value),
    Result onFieldTapped(OnFieldTapped value),
    @required Result orElse(),
  });
}

abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res>;
}

class _$GameEventCopyWithImpl<$Res> implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  final GameEvent _value;

  // ignore: unused_field
  final $Res Function(GameEvent) _then;
}

abstract class $CreateGameCopyWith<$Res> {
  factory $CreateGameCopyWith(
          CreateGame value, $Res Function(CreateGame) then) =
      _$CreateGameCopyWithImpl<$Res>;

  $Res call({DifficultyLevel difficultyLevel});
}

class _$CreateGameCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $CreateGameCopyWith<$Res> {
  _$CreateGameCopyWithImpl(CreateGame _value, $Res Function(CreateGame) _then)
      : super(_value, (v) => _then(v as CreateGame));

  @override
  CreateGame get _value => super._value as CreateGame;

  @override
  $Res call({
    Object difficultyLevel = freezed,
  }) {
    return _then(CreateGame(
      difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel as DifficultyLevel,
    ));
  }
}

class _$CreateGame with DiagnosticableTreeMixin implements CreateGame {
  const _$CreateGame(this.difficultyLevel) : assert(difficultyLevel != null);

  @override
  final DifficultyLevel difficultyLevel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.createGame(difficultyLevel: $difficultyLevel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.createGame'))
      ..add(DiagnosticsProperty('difficultyLevel', difficultyLevel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateGame &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.difficultyLevel, difficultyLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(difficultyLevel);

  @override
  $CreateGameCopyWith<CreateGame> get copyWith =>
      _$CreateGameCopyWithImpl<CreateGame>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createGame(DifficultyLevel difficultyLevel),
    @required Result restartGame(DifficultyLevel difficultyLevel),
    @required Result onFieldTapped(int index),
  }) {
    assert(createGame != null);
    assert(restartGame != null);
    assert(onFieldTapped != null);
    return createGame(difficultyLevel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createGame(DifficultyLevel difficultyLevel),
    Result restartGame(DifficultyLevel difficultyLevel),
    Result onFieldTapped(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createGame != null) {
      return createGame(difficultyLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createGame(CreateGame value),
    @required Result restartGame(RestartGame value),
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(createGame != null);
    assert(restartGame != null);
    assert(onFieldTapped != null);
    return createGame(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createGame(CreateGame value),
    Result restartGame(RestartGame value),
    Result onFieldTapped(OnFieldTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createGame != null) {
      return createGame(this);
    }
    return orElse();
  }
}

abstract class CreateGame implements GameEvent {
  const factory CreateGame(DifficultyLevel difficultyLevel) = _$CreateGame;

  DifficultyLevel get difficultyLevel;

  $CreateGameCopyWith<CreateGame> get copyWith;
}

abstract class $RestartGameCopyWith<$Res> {
  factory $RestartGameCopyWith(
          RestartGame value, $Res Function(RestartGame) then) =
      _$RestartGameCopyWithImpl<$Res>;

  $Res call({DifficultyLevel difficultyLevel});
}

class _$RestartGameCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $RestartGameCopyWith<$Res> {
  _$RestartGameCopyWithImpl(
      RestartGame _value, $Res Function(RestartGame) _then)
      : super(_value, (v) => _then(v as RestartGame));

  @override
  RestartGame get _value => super._value as RestartGame;

  @override
  $Res call({
    Object difficultyLevel = freezed,
  }) {
    return _then(RestartGame(
      difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel as DifficultyLevel,
    ));
  }
}

class _$RestartGame with DiagnosticableTreeMixin implements RestartGame {
  const _$RestartGame(this.difficultyLevel) : assert(difficultyLevel != null);

  @override
  final DifficultyLevel difficultyLevel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameEvent.restartGame(difficultyLevel: $difficultyLevel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameEvent.restartGame'))
      ..add(DiagnosticsProperty('difficultyLevel', difficultyLevel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RestartGame &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.difficultyLevel, difficultyLevel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(difficultyLevel);

  @override
  $RestartGameCopyWith<RestartGame> get copyWith =>
      _$RestartGameCopyWithImpl<RestartGame>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createGame(DifficultyLevel difficultyLevel),
    @required Result restartGame(DifficultyLevel difficultyLevel),
    @required Result onFieldTapped(int index),
  }) {
    assert(createGame != null);
    assert(restartGame != null);
    assert(onFieldTapped != null);
    return restartGame(difficultyLevel);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createGame(DifficultyLevel difficultyLevel),
    Result restartGame(DifficultyLevel difficultyLevel),
    Result onFieldTapped(int index),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restartGame != null) {
      return restartGame(difficultyLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createGame(CreateGame value),
    @required Result restartGame(RestartGame value),
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(createGame != null);
    assert(restartGame != null);
    assert(onFieldTapped != null);
    return restartGame(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createGame(CreateGame value),
    Result restartGame(RestartGame value),
    Result onFieldTapped(OnFieldTapped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restartGame != null) {
      return restartGame(this);
    }
    return orElse();
  }
}

abstract class RestartGame implements GameEvent {
  const factory RestartGame(DifficultyLevel difficultyLevel) = _$RestartGame;

  DifficultyLevel get difficultyLevel;

  $RestartGameCopyWith<RestartGame> get copyWith;
}

abstract class $OnFieldTappedCopyWith<$Res> {
  factory $OnFieldTappedCopyWith(
          OnFieldTapped value, $Res Function(OnFieldTapped) then) =
      _$OnFieldTappedCopyWithImpl<$Res>;

  $Res call({int index});
}

class _$OnFieldTappedCopyWithImpl<$Res> extends _$GameEventCopyWithImpl<$Res>
    implements $OnFieldTappedCopyWith<$Res> {
  _$OnFieldTappedCopyWithImpl(
      OnFieldTapped _value, $Res Function(OnFieldTapped) _then)
      : super(_value, (v) => _then(v as OnFieldTapped));

  @override
  OnFieldTapped get _value => super._value as OnFieldTapped;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(OnFieldTapped(
      index == freezed ? _value.index : index as int,
    ));
  }
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
  $OnFieldTappedCopyWith<OnFieldTapped> get copyWith =>
      _$OnFieldTappedCopyWithImpl<OnFieldTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createGame(DifficultyLevel difficultyLevel),
    @required Result restartGame(DifficultyLevel difficultyLevel),
    @required Result onFieldTapped(int index),
  }) {
    assert(createGame != null);
    assert(restartGame != null);
    assert(onFieldTapped != null);
    return onFieldTapped(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createGame(DifficultyLevel difficultyLevel),
    Result restartGame(DifficultyLevel difficultyLevel),
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
    @required Result createGame(CreateGame value),
    @required Result restartGame(RestartGame value),
    @required Result onFieldTapped(OnFieldTapped value),
  }) {
    assert(createGame != null);
    assert(restartGame != null);
    assert(onFieldTapped != null);
    return onFieldTapped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createGame(CreateGame value),
    Result restartGame(RestartGame value),
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

  $OnFieldTappedCopyWith<OnFieldTapped> get copyWith;
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

// ignore: unused_element
const $GameState = _$GameStateTearOff();

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

abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;

  // ignore: unused_field
  final $Res Function(GameState) _then;
}

abstract class $NothingCopyWith<$Res> {
  factory $NothingCopyWith(Nothing value, $Res Function(Nothing) then) =
      _$NothingCopyWithImpl<$Res>;
}

class _$NothingCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $NothingCopyWith<$Res> {
  _$NothingCopyWithImpl(Nothing _value, $Res Function(Nothing) _then)
      : super(_value, (v) => _then(v as Nothing));

  @override
  Nothing get _value => super._value as Nothing;
}

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

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
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

abstract class $MoveLoadingCopyWith<$Res> {
  factory $MoveLoadingCopyWith(
          MoveLoading value, $Res Function(MoveLoading) then) =
      _$MoveLoadingCopyWithImpl<$Res>;
}

class _$MoveLoadingCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $MoveLoadingCopyWith<$Res> {
  _$MoveLoadingCopyWithImpl(
      MoveLoading _value, $Res Function(MoveLoading) _then)
      : super(_value, (v) => _then(v as MoveLoading));

  @override
  MoveLoading get _value => super._value as MoveLoading;
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

abstract class $RenderGameCopyWith<$Res> {
  factory $RenderGameCopyWith(
          RenderGame value, $Res Function(RenderGame) then) =
      _$RenderGameCopyWithImpl<$Res>;

  $Res call({GameMark playerMark, BuiltList<GameMove> moves});
}

class _$RenderGameCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $RenderGameCopyWith<$Res> {
  _$RenderGameCopyWithImpl(RenderGame _value, $Res Function(RenderGame) _then)
      : super(_value, (v) => _then(v as RenderGame));

  @override
  RenderGame get _value => super._value as RenderGame;

  @override
  $Res call({
    Object playerMark = freezed,
    Object moves = freezed,
  }) {
    return _then(RenderGame(
      playerMark:
          playerMark == freezed ? _value.playerMark : playerMark as GameMark,
      moves: moves == freezed ? _value.moves : moves as BuiltList<GameMove>,
    ));
  }
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
  $RenderGameCopyWith<RenderGame> get copyWith =>
      _$RenderGameCopyWithImpl<RenderGame>(this, _$identity);

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

  $RenderGameCopyWith<RenderGame> get copyWith;
}

abstract class $PlayerWonCopyWith<$Res> {
  factory $PlayerWonCopyWith(PlayerWon value, $Res Function(PlayerWon) then) =
      _$PlayerWonCopyWithImpl<$Res>;
}

class _$PlayerWonCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $PlayerWonCopyWith<$Res> {
  _$PlayerWonCopyWithImpl(PlayerWon _value, $Res Function(PlayerWon) _then)
      : super(_value, (v) => _then(v as PlayerWon));

  @override
  PlayerWon get _value => super._value as PlayerWon;
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

abstract class $ComputerWonCopyWith<$Res> {
  factory $ComputerWonCopyWith(
          ComputerWon value, $Res Function(ComputerWon) then) =
      _$ComputerWonCopyWithImpl<$Res>;
}

class _$ComputerWonCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $ComputerWonCopyWith<$Res> {
  _$ComputerWonCopyWithImpl(
      ComputerWon _value, $Res Function(ComputerWon) _then)
      : super(_value, (v) => _then(v as ComputerWon));

  @override
  ComputerWon get _value => super._value as ComputerWon;
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

abstract class $DrawCopyWith<$Res> {
  factory $DrawCopyWith(Draw value, $Res Function(Draw) then) =
      _$DrawCopyWithImpl<$Res>;
}

class _$DrawCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $DrawCopyWith<$Res> {
  _$DrawCopyWithImpl(Draw _value, $Res Function(Draw) _then)
      : super(_value, (v) => _then(v as Draw));

  @override
  Draw get _value => super._value as Draw;
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

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;

  $Res call({RawKeyString errorMessage});
}

class _$ErrorCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as RawKeyString,
    ));
  }
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
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

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

  $ErrorCopyWith<Error> get copyWith;
}

abstract class $MoveErrorCopyWith<$Res> {
  factory $MoveErrorCopyWith(MoveError value, $Res Function(MoveError) then) =
      _$MoveErrorCopyWithImpl<$Res>;

  $Res call({RawKeyString errorMessage});
}

class _$MoveErrorCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $MoveErrorCopyWith<$Res> {
  _$MoveErrorCopyWithImpl(MoveError _value, $Res Function(MoveError) _then)
      : super(_value, (v) => _then(v as MoveError));

  @override
  MoveError get _value => super._value as MoveError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(MoveError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as RawKeyString,
    ));
  }
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
  $MoveErrorCopyWith<MoveError> get copyWith =>
      _$MoveErrorCopyWithImpl<MoveError>(this, _$identity);

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

  $MoveErrorCopyWith<MoveError> get copyWith;
}
