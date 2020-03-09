// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_move;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$GameMove {
  int get moveId;

  int get fieldIndex;

  int get counter;

  GameMark get mark;

  GameMove copyWith({int moveId, int fieldIndex, int counter, GameMark mark});
}

class _$GameMoveTearOff {
  const _$GameMoveTearOff();

  _GameMove call(
      {@required int moveId,
      @required int fieldIndex,
      @required int counter,
      @required GameMark mark}) {
    return _GameMove(
      moveId: moveId,
      fieldIndex: fieldIndex,
      counter: counter,
      mark: mark,
    );
  }
}

const $GameMove = _$GameMoveTearOff();

class _$_GameMove implements _GameMove {
  const _$_GameMove(
      {@required this.moveId,
      @required this.fieldIndex,
      @required this.counter,
      @required this.mark})
      : assert(moveId != null),
        assert(fieldIndex != null),
        assert(counter != null),
        assert(mark != null);

  @override
  final int moveId;
  @override
  final int fieldIndex;
  @override
  final int counter;
  @override
  final GameMark mark;

  @override
  String toString() {
    return 'GameMove(moveId: $moveId, fieldIndex: $fieldIndex, counter: $counter, mark: $mark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameMove &&
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
  _$_GameMove copyWith({
    Object moveId = freezed,
    Object fieldIndex = freezed,
    Object counter = freezed,
    Object mark = freezed,
  }) {
    return _$_GameMove(
      moveId: moveId == freezed ? this.moveId : moveId as int,
      fieldIndex: fieldIndex == freezed ? this.fieldIndex : fieldIndex as int,
      counter: counter == freezed ? this.counter : counter as int,
      mark: mark == freezed ? this.mark : mark as GameMark,
    );
  }
}

abstract class _GameMove implements GameMove {
  const factory _GameMove(
      {@required int moveId,
      @required int fieldIndex,
      @required int counter,
      @required GameMark mark}) = _$_GameMove;

  @override
  int get moveId;

  @override
  int get fieldIndex;

  @override
  int get counter;

  @override
  GameMark get mark;

  @override
  _GameMove copyWith({int moveId, int fieldIndex, int counter, GameMark mark});
}
