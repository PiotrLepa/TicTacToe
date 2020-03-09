// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$GameResponse {
  int get gameId;

  GameStatus get status;

  DifficultyLevel get difficultyLevel;

  GameMark get playerMark;

  GameMark get computerMark;

  BuiltList<GameMove> get moves;

  GameResponse copyWith(
      {int gameId,
      GameStatus status,
      DifficultyLevel difficultyLevel,
      GameMark playerMark,
      GameMark computerMark,
      BuiltList<GameMove> moves});
}

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

const $GameResponse = _$GameResponseTearOff();

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
  _$_GameResponse copyWith({
    Object gameId = freezed,
    Object status = freezed,
    Object difficultyLevel = freezed,
    Object playerMark = freezed,
    Object computerMark = freezed,
    Object moves = freezed,
  }) {
    return _$_GameResponse(
      gameId: gameId == freezed ? this.gameId : gameId as int,
      status: status == freezed ? this.status : status as GameStatus,
      difficultyLevel: difficultyLevel == freezed
          ? this.difficultyLevel
          : difficultyLevel as DifficultyLevel,
      playerMark:
          playerMark == freezed ? this.playerMark : playerMark as GameMark,
      computerMark: computerMark == freezed
          ? this.computerMark
          : computerMark as GameMark,
      moves: moves == freezed ? this.moves : moves as BuiltList<GameMove>,
    );
  }
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
  _GameResponse copyWith(
      {int gameId,
      GameStatus status,
      DifficultyLevel difficultyLevel,
      GameMark playerMark,
      GameMark computerMark,
      BuiltList<GameMove> moves});
}
