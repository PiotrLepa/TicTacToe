// GENERATED CODE - DO NOT MODIFY BY HAND

part of game_move_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameMoveModel _$_$_GameMoveModelFromJson(Map<String, dynamic> json) {
  return _$_GameMoveModel(
    moveId: json['moveId'] as int,
    fieldIndex: json['fieldIndex'] as int,
    counter: json['counter'] as int,
    mark: json['mark'] == null
        ? null
        : GameMarkModel.fromJson(json['mark'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GameMoveModelToJson(_$_GameMoveModel instance) =>
    <String, dynamic>{
      'moveId': instance.moveId,
      'fieldIndex': instance.fieldIndex,
      'counter': instance.counter,
      'mark': instance.mark,
    };
