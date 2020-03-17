// GENERATED CODE - DO NOT MODIFY BY HAND

part of game_response_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameResponseModel _$_$_GameResponseModelFromJson(Map<String, dynamic> json) {
  return _$_GameResponseModel(
    gameId: json['gameId'] as int,
    playerId: json['playerId'] as int,
    status: _$enumDecodeNullable(_$GameStatusModelEnumMap, json['status']),
    difficultyLevel: _$enumDecodeNullable(
        _$DifficultyLevelModelEnumMap, json['difficultyLevel']),
    playerMark:
        _$enumDecodeNullable(_$GameMarkModelEnumMap, json['playerMark']),
    computerMark:
        _$enumDecodeNullable(_$GameMarkModelEnumMap, json['computerMark']),
    moves: (json['moves'] as List)
        ?.map((e) => e == null
            ? null
            : GameMoveModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GameResponseModelToJson(
        _$_GameResponseModel instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'playerId': instance.playerId,
      'status': _$GameStatusModelEnumMap[instance.status],
      'difficultyLevel':
          _$DifficultyLevelModelEnumMap[instance.difficultyLevel],
      'playerMark': _$GameMarkModelEnumMap[instance.playerMark],
      'computerMark': _$GameMarkModelEnumMap[instance.computerMark],
      'moves': instance.moves,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GameStatusModelEnumMap = {
  GameStatusModel.ON_GOING: 'ON_GOING',
  GameStatusModel.PLAYER_WON: 'PLAYER_WON',
  GameStatusModel.COMPUTER_WON: 'COMPUTER_WON',
  GameStatusModel.DRAW: 'DRAW',
};

const _$DifficultyLevelModelEnumMap = {
  DifficultyLevelModel.EASY: 'EASY',
  DifficultyLevelModel.MEDIUM: 'MEDIUM',
  DifficultyLevelModel.HARD: 'HARD',
};

const _$GameMarkModelEnumMap = {
  GameMarkModel.X: 'X',
  GameMarkModel.O: 'O',
};
