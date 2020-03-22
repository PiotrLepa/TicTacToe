// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_response_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

GameResponseModel _$GameResponseModelFromJson(Map<String, dynamic> json) {
  return _GameResponseModel.fromJson(json);
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
      @required List<GameMoveModel> moves}) {
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

// ignore: unused_element
const $GameResponseModel = _$GameResponseModelTearOff();

mixin _$GameResponseModel {
  int get gameId;

  int get playerId;

  GameStatusModel get status;

  DifficultyLevelModel get difficultyLevel;

  GameMarkModel get playerMark;

  GameMarkModel get computerMark;

  List<GameMoveModel> get moves;

  Map<String, dynamic> toJson();

  $GameResponseModelCopyWith<GameResponseModel> get copyWith;
}

abstract class $GameResponseModelCopyWith<$Res> {
  factory $GameResponseModelCopyWith(
          GameResponseModel value, $Res Function(GameResponseModel) then) =
      _$GameResponseModelCopyWithImpl<$Res>;

  $Res call(
      {int gameId,
      int playerId,
      GameStatusModel status,
      DifficultyLevelModel difficultyLevel,
      GameMarkModel playerMark,
      GameMarkModel computerMark,
      List<GameMoveModel> moves});
}

class _$GameResponseModelCopyWithImpl<$Res>
    implements $GameResponseModelCopyWith<$Res> {
  _$GameResponseModelCopyWithImpl(this._value, this._then);

  final GameResponseModel _value;

  // ignore: unused_field
  final $Res Function(GameResponseModel) _then;

  @override
  $Res call({
    Object gameId = freezed,
    Object playerId = freezed,
    Object status = freezed,
    Object difficultyLevel = freezed,
    Object playerMark = freezed,
    Object computerMark = freezed,
    Object moves = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: gameId == freezed ? _value.gameId : gameId as int,
      playerId: playerId == freezed ? _value.playerId : playerId as int,
      status: status == freezed ? _value.status : status as GameStatusModel,
      difficultyLevel: difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel as DifficultyLevelModel,
      playerMark: playerMark == freezed
          ? _value.playerMark
          : playerMark as GameMarkModel,
      computerMark: computerMark == freezed
          ? _value.computerMark
          : computerMark as GameMarkModel,
      moves: moves == freezed ? _value.moves : moves as List<GameMoveModel>,
    ));
  }
}

abstract class _$GameResponseModelCopyWith<$Res>
    implements $GameResponseModelCopyWith<$Res> {
  factory _$GameResponseModelCopyWith(
          _GameResponseModel value, $Res Function(_GameResponseModel) then) =
      __$GameResponseModelCopyWithImpl<$Res>;

  @override
  $Res call(
      {int gameId,
      int playerId,
      GameStatusModel status,
      DifficultyLevelModel difficultyLevel,
      GameMarkModel playerMark,
      GameMarkModel computerMark,
      List<GameMoveModel> moves});
}

class __$GameResponseModelCopyWithImpl<$Res>
    extends _$GameResponseModelCopyWithImpl<$Res>
    implements _$GameResponseModelCopyWith<$Res> {
  __$GameResponseModelCopyWithImpl(
      _GameResponseModel _value, $Res Function(_GameResponseModel) _then)
      : super(_value, (v) => _then(v as _GameResponseModel));

  @override
  _GameResponseModel get _value => super._value as _GameResponseModel;

  @override
  $Res call({
    Object gameId = freezed,
    Object playerId = freezed,
    Object status = freezed,
    Object difficultyLevel = freezed,
    Object playerMark = freezed,
    Object computerMark = freezed,
    Object moves = freezed,
  }) {
    return _then(_GameResponseModel(
      gameId: gameId == freezed ? _value.gameId : gameId as int,
      playerId: playerId == freezed ? _value.playerId : playerId as int,
      status: status == freezed ? _value.status : status as GameStatusModel,
      difficultyLevel: difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel as DifficultyLevelModel,
      playerMark: playerMark == freezed
          ? _value.playerMark
          : playerMark as GameMarkModel,
      computerMark: computerMark == freezed
          ? _value.computerMark
          : computerMark as GameMarkModel,
      moves: moves == freezed ? _value.moves : moves as List<GameMoveModel>,
    ));
  }
}

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
  final List<GameMoveModel> moves;

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
  _$GameResponseModelCopyWith<_GameResponseModel> get copyWith =>
      __$GameResponseModelCopyWithImpl<_GameResponseModel>(this, _$identity);

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
      @required List<GameMoveModel> moves}) = _$_GameResponseModel;

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
  List<GameMoveModel> get moves;

  @override
  _$GameResponseModelCopyWith<_GameResponseModel> get copyWith;
}
