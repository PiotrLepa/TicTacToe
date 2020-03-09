// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_status_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

GameStatusModel _$GameStatusModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'onGoing':
      return _OnGoing.fromJson(json);
    case 'playerWon':
      return _PlayerWon.fromJson(json);
    case 'computerWon':
      return _ComputerWon.fromJson(json);
    case 'draw':
      return _Draw.fromJson(json);

    default:
      throw FallThroughError();
  }
}

mixin _$GameStatusModel {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onGoing(),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onGoing(),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onGoing(_OnGoing value),
    @required Result playerWon(_PlayerWon value),
    @required Result computerWon(_ComputerWon value),
    @required Result draw(_Draw value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onGoing(_OnGoing value),
    Result playerWon(_PlayerWon value),
    Result computerWon(_ComputerWon value),
    Result draw(_Draw value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

class _$GameStatusModelTearOff {
  const _$GameStatusModelTearOff();

  _OnGoing onGoing() {
    return const _OnGoing();
  }

  _PlayerWon playerWon() {
    return const _PlayerWon();
  }

  _ComputerWon computerWon() {
    return const _ComputerWon();
  }

  _Draw draw() {
    return const _Draw();
  }
}

const $GameStatusModel = _$GameStatusModelTearOff();

@JsonSerializable()
class _$_OnGoing implements _OnGoing {
  const _$_OnGoing();

  factory _$_OnGoing.fromJson(Map<String, dynamic> json) =>
      _$_$_OnGoingFromJson(json);

  @override
  String toString() {
    return 'GameStatusModel.onGoing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnGoing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onGoing(),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return onGoing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onGoing(),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onGoing != null) {
      return onGoing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onGoing(_OnGoing value),
    @required Result playerWon(_PlayerWon value),
    @required Result computerWon(_ComputerWon value),
    @required Result draw(_Draw value),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return onGoing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onGoing(_OnGoing value),
    Result playerWon(_PlayerWon value),
    Result computerWon(_ComputerWon value),
    Result draw(_Draw value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onGoing != null) {
      return onGoing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OnGoingToJson(this)..['runtimeType'] = 'onGoing';
  }
}

abstract class _OnGoing implements GameStatusModel {
  const factory _OnGoing() = _$_OnGoing;

  factory _OnGoing.fromJson(Map<String, dynamic> json) = _$_OnGoing.fromJson;
}

@JsonSerializable()
class _$_PlayerWon implements _PlayerWon {
  const _$_PlayerWon();

  factory _$_PlayerWon.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerWonFromJson(json);

  @override
  String toString() {
    return 'GameStatusModel.playerWon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PlayerWon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onGoing(),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return playerWon();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onGoing(),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playerWon != null) {
      return playerWon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onGoing(_OnGoing value),
    @required Result playerWon(_PlayerWon value),
    @required Result computerWon(_ComputerWon value),
    @required Result draw(_Draw value),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return playerWon(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onGoing(_OnGoing value),
    Result playerWon(_PlayerWon value),
    Result computerWon(_ComputerWon value),
    Result draw(_Draw value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playerWon != null) {
      return playerWon(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerWonToJson(this)..['runtimeType'] = 'playerWon';
  }
}

abstract class _PlayerWon implements GameStatusModel {
  const factory _PlayerWon() = _$_PlayerWon;

  factory _PlayerWon.fromJson(Map<String, dynamic> json) =
      _$_PlayerWon.fromJson;
}

@JsonSerializable()
class _$_ComputerWon implements _ComputerWon {
  const _$_ComputerWon();

  factory _$_ComputerWon.fromJson(Map<String, dynamic> json) =>
      _$_$_ComputerWonFromJson(json);

  @override
  String toString() {
    return 'GameStatusModel.computerWon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ComputerWon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onGoing(),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return computerWon();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onGoing(),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (computerWon != null) {
      return computerWon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onGoing(_OnGoing value),
    @required Result playerWon(_PlayerWon value),
    @required Result computerWon(_ComputerWon value),
    @required Result draw(_Draw value),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return computerWon(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onGoing(_OnGoing value),
    Result playerWon(_PlayerWon value),
    Result computerWon(_ComputerWon value),
    Result draw(_Draw value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (computerWon != null) {
      return computerWon(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ComputerWonToJson(this)..['runtimeType'] = 'computerWon';
  }
}

abstract class _ComputerWon implements GameStatusModel {
  const factory _ComputerWon() = _$_ComputerWon;

  factory _ComputerWon.fromJson(Map<String, dynamic> json) =
      _$_ComputerWon.fromJson;
}

@JsonSerializable()
class _$_Draw implements _Draw {
  const _$_Draw();

  factory _$_Draw.fromJson(Map<String, dynamic> json) =>
      _$_$_DrawFromJson(json);

  @override
  String toString() {
    return 'GameStatusModel.draw()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Draw);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onGoing(),
    @required Result playerWon(),
    @required Result computerWon(),
    @required Result draw(),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return draw();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onGoing(),
    Result playerWon(),
    Result computerWon(),
    Result draw(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (draw != null) {
      return draw();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onGoing(_OnGoing value),
    @required Result playerWon(_PlayerWon value),
    @required Result computerWon(_ComputerWon value),
    @required Result draw(_Draw value),
  }) {
    assert(onGoing != null);
    assert(playerWon != null);
    assert(computerWon != null);
    assert(draw != null);
    return draw(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onGoing(_OnGoing value),
    Result playerWon(_PlayerWon value),
    Result computerWon(_ComputerWon value),
    Result draw(_Draw value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (draw != null) {
      return draw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DrawToJson(this)..['runtimeType'] = 'draw';
  }
}

abstract class _Draw implements GameStatusModel {
  const factory _Draw() = _$_Draw;

  factory _Draw.fromJson(Map<String, dynamic> json) = _$_Draw.fromJson;
}
