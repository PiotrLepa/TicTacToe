// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of game_mark;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$GameMark {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result x(),
    @required Result o(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result x(),
    Result o(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result x(_X value),
    @required Result o(_o value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result x(_X value),
    Result o(_o value),
    @required Result orElse(),
  });
}

class _$GameMarkTearOff {
  const _$GameMarkTearOff();

  _X x() {
    return const _X();
  }

  _o o() {
    return const _o();
  }
}

const $GameMark = _$GameMarkTearOff();

class _$_X implements _X {
  const _$_X();

  @override
  String toString() {
    return 'GameMark.x()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _X);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result x(),
    @required Result o(),
  }) {
    assert(x != null);
    assert(o != null);
    return x();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result x(),
    Result o(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (x != null) {
      return x();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result x(_X value),
    @required Result o(_o value),
  }) {
    assert(x != null);
    assert(o != null);
    return x(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result x(_X value),
    Result o(_o value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (x != null) {
      return x(this);
    }
    return orElse();
  }
}

abstract class _X implements GameMark {
  const factory _X() = _$_X;
}

class _$_o implements _o {
  const _$_o();

  @override
  String toString() {
    return 'GameMark.o()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _o);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result x(),
    @required Result o(),
  }) {
    assert(x != null);
    assert(o != null);
    return o();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result x(),
    Result o(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (o != null) {
      return o();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result x(_X value),
    @required Result o(_o value),
  }) {
    assert(x != null);
    assert(o != null);
    return o(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result x(_X value),
    Result o(_o value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (o != null) {
      return o(this);
    }
    return orElse();
  }
}

abstract class _o implements GameMark {
  const factory _o() = _$_o;
}
