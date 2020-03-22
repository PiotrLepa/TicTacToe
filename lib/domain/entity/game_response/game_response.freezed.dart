// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GameResponseTearOff {
  const _$GameResponseTearOff();

  _GameResponse call(
      {@required int gameId,
      @required GameStatus status,
      @required DifficultyLevel difficultyLevel,
      @required GameMark playerMark,
      @required GameMark computerMark,
      @required BuiltList<GameMove> moves}) {
    return _GameResponse(
      gameId: gameId,
      status: status,
      difficultyLevel: difficultyLevel,
      playerMark: playerMark,
      computerMark: computerMark,
      moves: moves,
    );
  }
}

// ignore: unused_element
const $GameResponse = _$GameResponseTearOff();

mixin _$GameResponse {
  int get gameId;
  GameStatus get status;
  DifficultyLevel get difficultyLevel;
  GameMark get playerMark;
  GameMark get computerMark;
  BuiltList<GameMove> get moves;

  $GameResponseCopyWith<GameResponse> get copyWith;
}

abstract class $GameResponseCopyWith<$Res> {
  factory $GameResponseCopyWith(
          GameResponse value, $Res Function(GameResponse) then) =
      _$GameResponseCopyWithImpl<$Res>;
  $Res call(
      {int gameId,
      GameStatus status,
      DifficultyLevel difficultyLevel,
      GameMark playerMark,
      GameMark computerMark,
      BuiltList<GameMove> moves});
}

class _$GameResponseCopyWithImpl<$Res> implements $GameResponseCopyWith<$Res> {
  _$GameResponseCopyWithImpl(this._value, this._then);

  final GameResponse _value;
  // ignore: unused_field
  final $Res Function(GameResponse) _then;

  @override
  $Res call({
    Object gameId = freezed,
    Object status = freezed,
    Object difficultyLevel = freezed,
    Object playerMark = freezed,
    Object computerMark = freezed,
    Object moves = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed ? _value.gameId : gameId as int,
      status: status == freezed ? _value.status : status as GameStatus,
      difficultyLevel: difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel as DifficultyLevel,
      playerMark:
          playerMark == freezed ? _value.playerMark : playerMark as GameMark,
      computerMark: computerMark == freezed
          ? _value.computerMark
          : computerMark as GameMark,
      moves: moves == freezed ? _value.moves : moves as BuiltList<GameMove>,
    ));
  }
}

abstract class _$GameResponseCopyWith<$Res>
    implements $GameResponseCopyWith<$Res> {
  factory _$GameResponseCopyWith(
          _GameResponse value, $Res Function(_GameResponse) then) =
      __$GameResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int gameId,
      GameStatus status,
      DifficultyLevel difficultyLevel,
      GameMark playerMark,
      GameMark computerMark,
      BuiltList<GameMove> moves});
}

class __$GameResponseCopyWithImpl<$Res> extends _$GameResponseCopyWithImpl<$Res>
    implements _$GameResponseCopyWith<$Res> {
  __$GameResponseCopyWithImpl(
      _GameResponse _value, $Res Function(_GameResponse) _then)
      : super(_value, (v) => _then(v as _GameResponse));

  @override
  _GameResponse get _value => super._value as _GameResponse;

  @override
  $Res call({
    Object gameId = freezed,
    Object status = freezed,
    Object difficultyLevel = freezed,
    Object playerMark = freezed,
    Object computerMark = freezed,
    Object moves = freezed,
  }) {
    return _then(_GameResponse(
      gameId: gameId == freezed ? _value.gameId : gameId as int,
      status: status == freezed ? _value.status : status as GameStatus,
      difficultyLevel: difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel as DifficultyLevel,
      playerMark:
          playerMark == freezed ? _value.playerMark : playerMark as GameMark,
      computerMark: computerMark == freezed
          ? _value.computerMark
          : computerMark as GameMark,
      moves: moves == freezed ? _value.moves : moves as BuiltList<GameMove>,
    ));
  }
}

class _$_GameResponse implements _GameResponse {
  const _$_GameResponse(
      {@required this.gameId,
      @required this.status,
      @required this.difficultyLevel,
      @required this.playerMark,
      @required this.computerMark,
      @required this.moves})
      : assert(gameId != null),
        assert(status != null),
        assert(difficultyLevel != null),
        assert(playerMark != null),
        assert(computerMark != null),
        assert(moves != null);

  @override
  final int gameId;
  @override
  final GameStatus status;
  @override
  final DifficultyLevel difficultyLevel;
  @override
  final GameMark playerMark;
  @override
  final GameMark computerMark;
  @override
  final BuiltList<GameMove> moves;

  @override
  String toString() {
    return 'GameResponse(gameId: $gameId, status: $status, difficultyLevel: $difficultyLevel, playerMark: $playerMark, computerMark: $computerMark, moves: $moves)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameResponse &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                const DeepCollectionEquality()
                    .equals(other.difficultyLevel, difficultyLevel)) &&
            (identical(other.playerMark, playerMark) ||
                const DeepCollectionEquality()
                    .equals(other.playerMark, playerMark)) &&
            (identical(other.computerMark, computerMark) ||
                const DeepCollectionEquality()
                    .equals(other.computerMark, computerMark)) &&
            (identical(other.moves, moves) ||
                const DeepCollectionEquality().equals(other.moves, moves)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(difficultyLevel) ^
      const DeepCollectionEquality().hash(playerMark) ^
      const DeepCollectionEquality().hash(computerMark) ^
      const DeepCollectionEquality().hash(moves);

  @override
  _$GameResponseCopyWith<_GameResponse> get copyWith =>
      __$GameResponseCopyWithImpl<_GameResponse>(this, _$identity);
}

abstract class _GameResponse implements GameResponse {
  const factory _GameResponse(
      {@required int gameId,
      @required GameStatus status,
      @required DifficultyLevel difficultyLevel,
      @required GameMark playerMark,
      @required GameMark computerMark,
      @required BuiltList<GameMove> moves}) = _$_GameResponse;

  @override
  int get gameId;
  @override
  GameStatus get status;
  @override
  DifficultyLevel get difficultyLevel;
  @override
  GameMark get playerMark;
  @override
  GameMark get computerMark;
  @override
  BuiltList<GameMove> get moves;
  @override
  _$GameResponseCopyWith<_GameResponse> get copyWith;
}
