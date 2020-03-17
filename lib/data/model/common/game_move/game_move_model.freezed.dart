// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_move_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

GameMoveModel _$GameMoveModelFromJson(Map<String, dynamic> json) {
  return _GameMoveModel.fromJson(json);
}

mixin _$GameMoveModel {
  int get moveId;
  int get fieldIndex;
  int get counter;
  GameMarkModel get mark;

  GameMoveModel copyWith(
      {int moveId, int fieldIndex, int counter, GameMarkModel mark});

  Map<String, dynamic> toJson();
}

class _$GameMoveModelTearOff {
  const _$GameMoveModelTearOff();

  _GameMoveModel call(
      {@required int moveId,
      @required int fieldIndex,
      @required int counter,
      @required GameMarkModel mark}) {
    return _GameMoveModel(
      moveId: moveId,
      fieldIndex: fieldIndex,
      counter: counter,
      mark: mark,
    );
  }
}

const $GameMoveModel = _$GameMoveModelTearOff();

@JsonSerializable()
class _$_GameMoveModel implements _GameMoveModel {
  const _$_GameMoveModel(
      {@required this.moveId,
      @required this.fieldIndex,
      @required this.counter,
      @required this.mark})
      : assert(moveId != null),
        assert(fieldIndex != null),
        assert(counter != null),
        assert(mark != null);

  factory _$_GameMoveModel.fromJson(Map<String, dynamic> json) =>
      _$_$_GameMoveModelFromJson(json);

  @override
  final int moveId;
  @override
  final int fieldIndex;
  @override
  final int counter;
  @override
  final GameMarkModel mark;

  @override
  String toString() {
    return 'GameMoveModel(moveId: $moveId, fieldIndex: $fieldIndex, counter: $counter, mark: $mark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameMoveModel &&
            (identical(other.moveId, moveId) ||
                const DeepCollectionEquality().equals(other.moveId, moveId)) &&
            (identical(other.fieldIndex, fieldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.fieldIndex, fieldIndex)) &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.mark, mark) ||
                const DeepCollectionEquality().equals(other.mark, mark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moveId) ^
      const DeepCollectionEquality().hash(fieldIndex) ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(mark);

  @override
  _$_GameMoveModel copyWith({
    Object moveId = freezed,
    Object fieldIndex = freezed,
    Object counter = freezed,
    Object mark = freezed,
  }) {
    return _$_GameMoveModel(
      moveId: moveId == freezed ? this.moveId : moveId as int,
      fieldIndex: fieldIndex == freezed ? this.fieldIndex : fieldIndex as int,
      counter: counter == freezed ? this.counter : counter as int,
      mark: mark == freezed ? this.mark : mark as GameMarkModel,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameMoveModelToJson(this);
  }
}

abstract class _GameMoveModel implements GameMoveModel {
  const factory _GameMoveModel(
      {@required int moveId,
      @required int fieldIndex,
      @required int counter,
      @required GameMarkModel mark}) = _$_GameMoveModel;

  factory _GameMoveModel.fromJson(Map<String, dynamic> json) =
      _$_GameMoveModel.fromJson;

  @override
  int get moveId;
  @override
  int get fieldIndex;
  @override
  int get counter;
  @override
  GameMarkModel get mark;

  @override
  _GameMoveModel copyWith(
      {int moveId, int fieldIndex, int counter, GameMarkModel mark});
}
