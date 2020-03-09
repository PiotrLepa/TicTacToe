// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_response_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

GameResponseModel _$GameResponseModelFromJson(Map<String, dynamic> json) {
  return _GameResponseModel.fromJson(json);
}

mixin _$GameResponseModel {
  int get gameId;
  int get playerId;
  GameStatusModel get status;
  DifficultyLevelModel get difficultyLevel;
  GameMarkModel get playerMark;
  GameMarkModel get computerMark;
  BuiltList<GameMoveModel> get moves;

  GameResponseModel copyWith(
      {int gameId,
      int playerId,
      GameStatusModel status,
      DifficultyLevelModel difficultyLevel,
      GameMarkModel playerMark,
      GameMarkModel computerMark,
      BuiltList<GameMoveModel> moves});

  Map<String, dynamic> toJson();
}

class _$GameResponseModelTearOff {
  const _$GameResponseModelTearOff();

  _GameResponseModel call(
      {@required int gameId,
      @required int playerId,
      @required GameStatusModel status,
      @required DifficultyLevelModel difficultyLevel,
      @required GameMarkModel playerMark,
      @required GameMarkModel computerMark,
      @required BuiltList<GameMoveModel> moves}) {
    return _GameResponseModel(
      gameId: gameId,
      playerId: playerId,
      status: status,
      difficultyLevel: difficultyLevel,
      playerMark: playerMark,
      computerMark: computerMark,
      moves: moves,
    );
  }
}

const $GameResponseModel = _$GameResponseModelTearOff();

@JsonSerializable()
class _$_GameResponseModel implements _GameResponseModel {
  const _$_GameResponseModel(
      {@required this.gameId,
      @required this.playerId,
      @required this.status,
      @required this.difficultyLevel,
      @required this.playerMark,
      @required this.computerMark,
      @required this.moves})
      : assert(gameId != null),
        assert(playerId != null),
        assert(status != null),
        assert(difficultyLevel != null),
        assert(playerMark != null),
        assert(computerMark != null),
        assert(moves != null);

  factory _$_GameResponseModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GameResponseModelFromJson(json);

  @override
  final int gameId;
  @override
  final int playerId;
  @override
  final GameStatusModel status;
  @override
  final DifficultyLevelModel difficultyLevel;
  @override
  final GameMarkModel playerMark;
  @override
  final GameMarkModel computerMark;
  @override
  final BuiltList<GameMoveModel> moves;

  @override
  String toString() {
    return 'GameResponseModel(gameId: $gameId, playerId: $playerId, status: $status, difficultyLevel: $difficultyLevel, playerMark: $playerMark, computerMark: $computerMark, moves: $moves)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameResponseModel &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.playerId, playerId) ||
                const DeepCollectionEquality()
                    .equals(other.playerId, playerId)) &&
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
      const DeepCollectionEquality().hash(playerId) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(difficultyLevel) ^
      const DeepCollectionEquality().hash(playerMark) ^
      const DeepCollectionEquality().hash(computerMark) ^
      const DeepCollectionEquality().hash(moves);

  @override
  _$_GameResponseModel copyWith({
    Object gameId = freezed,
    Object playerId = freezed,
    Object status = freezed,
    Object difficultyLevel = freezed,
    Object playerMark = freezed,
    Object computerMark = freezed,
    Object moves = freezed,
  }) {
    return _$_GameResponseModel(
      gameId: gameId == freezed ? this.gameId : gameId as int,
      playerId: playerId == freezed ? this.playerId : playerId as int,
      status: status == freezed ? this.status : status as GameStatusModel,
      difficultyLevel: difficultyLevel == freezed
          ? this.difficultyLevel
          : difficultyLevel as DifficultyLevelModel,
      playerMark:
          playerMark == freezed ? this.playerMark : playerMark as GameMarkModel,
      computerMark: computerMark == freezed
          ? this.computerMark
          : computerMark as GameMarkModel,
      moves: moves == freezed ? this.moves : moves as BuiltList<GameMoveModel>,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameResponseModelToJson(this);
  }
}

abstract class _GameResponseModel implements GameResponseModel {
  const factory _GameResponseModel(
      {@required int gameId,
      @required int playerId,
      @required GameStatusModel status,
      @required DifficultyLevelModel difficultyLevel,
      @required GameMarkModel playerMark,
      @required GameMarkModel computerMark,
      @required BuiltList<GameMoveModel> moves}) = _$_GameResponseModel;

  factory _GameResponseModel.fromJson(Map<String, dynamic> json) =
      _$_GameResponseModel.fromJson;

  @override
  int get gameId;
  @override
  int get playerId;
  @override
  GameStatusModel get status;
  @override
  DifficultyLevelModel get difficultyLevel;
  @override
  GameMarkModel get playerMark;
  @override
  GameMarkModel get computerMark;
  @override
  BuiltList<GameMoveModel> get moves;

  @override
  _GameResponseModel copyWith(
      {int gameId,
      int playerId,
      GameStatusModel status,
      DifficultyLevelModel difficultyLevel,
      GameMarkModel playerMark,
      GameMarkModel computerMark,
      BuiltList<GameMoveModel> moves});
}
