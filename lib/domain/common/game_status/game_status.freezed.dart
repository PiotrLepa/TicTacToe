// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_status;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$GameStatus {
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
}

class _$GameStatusTearOff {
  const _$GameStatusTearOff();

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

const $GameStatus = _$GameStatusTearOff();

class _$_OnGoing implements _OnGoing {
  const _$_OnGoing();

  @override
  String toString() {
    return 'GameStatus.onGoing()';
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
}

abstract class _OnGoing implements GameStatus {
  const factory _OnGoing() = _$_OnGoing;
}

class _$_PlayerWon implements _PlayerWon {
  const _$_PlayerWon();

  @override
  String toString() {
    return 'GameStatus.playerWon()';
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
}

abstract class _PlayerWon implements GameStatus {
  const factory _PlayerWon() = _$_PlayerWon;
}

class _$_ComputerWon implements _ComputerWon {
  const _$_ComputerWon();

  @override
  String toString() {
    return 'GameStatus.computerWon()';
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
}

abstract class _ComputerWon implements GameStatus {
  const factory _ComputerWon() = _$_ComputerWon;
}

class _$_Draw implements _Draw {
  const _$_Draw();

  @override
  String toString() {
    return 'GameStatus.draw()';
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
}

abstract class _Draw implements GameStatus {
  const factory _Draw() = _$_Draw;
}
