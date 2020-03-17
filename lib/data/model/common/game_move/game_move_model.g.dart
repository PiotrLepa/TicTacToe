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
    mark: _$enumDecodeNullable(_$GameMarkModelEnumMap, json['mark']),
  );
}

Map<String, dynamic> _$_$_GameMoveModelToJson(_$_GameMoveModel instance) =>
    <String, dynamic>{
      'moveId': instance.moveId,
      'fieldIndex': instance.fieldIndex,
      'counter': instance.counter,
      'mark': _$GameMarkModelEnumMap[instance.mark],
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

const _$GameMarkModelEnumMap = {
  GameMarkModel.X: 'X',
  GameMarkModel.O: 'O',
};
