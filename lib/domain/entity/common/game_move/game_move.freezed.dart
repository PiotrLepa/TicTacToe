// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_move;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

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

// ignore: unused_element
const $GameMove = _$GameMoveTearOff();

mixin _$GameMove {
  int get moveId;

  int get fieldIndex;

  int get counter;

  GameMark get mark;

  $GameMoveCopyWith<GameMove> get copyWith;
}

abstract class $GameMoveCopyWith<$Res> {
  factory $GameMoveCopyWith(GameMove value, $Res Function(GameMove) then) =
      _$GameMoveCopyWithImpl<$Res>;

  $Res call({int moveId, int fieldIndex, int counter, GameMark mark});
}

class _$GameMoveCopyWithImpl<$Res> implements $GameMoveCopyWith<$Res> {
  _$GameMoveCopyWithImpl(this._value, this._then);

  final GameMove _value;

  // ignore: unused_field
  final $Res Function(GameMove) _then;

  @override
  $Res call({
    Object moveId = freezed,
    Object fieldIndex = freezed,
    Object counter = freezed,
    Object mark = freezed,
  }) {
    return _then(_value.copyWith(
      moveId: moveId == freezed ? _value.moveId : moveId as int,
      fieldIndex: fieldIndex == freezed ? _value.fieldIndex : fieldIndex as int,
      counter: counter == freezed ? _value.counter : counter as int,
      mark: mark == freezed ? _value.mark : mark as GameMark,
    ));
  }
}

abstract class _$GameMoveCopyWith<$Res> implements $GameMoveCopyWith<$Res> {
  factory _$GameMoveCopyWith(_GameMove value, $Res Function(_GameMove) then) =
      __$GameMoveCopyWithImpl<$Res>;

  @override
  $Res call({int moveId, int fieldIndex, int counter, GameMark mark});
}

class __$GameMoveCopyWithImpl<$Res> extends _$GameMoveCopyWithImpl<$Res>
    implements _$GameMoveCopyWith<$Res> {
  __$GameMoveCopyWithImpl(_GameMove _value, $Res Function(_GameMove) _then)
      : super(_value, (v) => _then(v as _GameMove));

  @override
  _GameMove get _value => super._value as _GameMove;

  @override
  $Res call({
    Object moveId = freezed,
    Object fieldIndex = freezed,
    Object counter = freezed,
    Object mark = freezed,
  }) {
    return _then(_GameMove(
      moveId: moveId == freezed ? _value.moveId : moveId as int,
      fieldIndex: fieldIndex == freezed ? _value.fieldIndex : fieldIndex as int,
      counter: counter == freezed ? _value.counter : counter as int,
      mark: mark == freezed ? _value.mark : mark as GameMark,
    ));
  }
}

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
  _$GameMoveCopyWith<_GameMove> get copyWith =>
      __$GameMoveCopyWithImpl<_GameMove>(this, _$identity);
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
  _$GameMoveCopyWith<_GameMove> get copyWith;
}
