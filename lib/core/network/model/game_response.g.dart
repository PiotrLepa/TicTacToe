// GENERATED CODE - DO NOT MODIFY BY HAND

part of game_response;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameResponse _$_$_GameResponseFromJson(Map<String, dynamic> json) {
  return _$_GameResponse(
    json['gameId'] as int,
    json['startDate'] as int,
    json['endDate'] as int,
  );
}

Map<String, dynamic> _$_$_GameResponseToJson(_$_GameResponse instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
