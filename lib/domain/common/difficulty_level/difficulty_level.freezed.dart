// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of difficulty_level;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$DifficultyLevel {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result easy(),
    @required Result medium(),
    @required Result hard(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result easy(),
    Result medium(),
    Result hard(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result easy(_Easy value),
    @required Result medium(_Medium value),
    @required Result hard(_Hard value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result easy(_Easy value),
    Result medium(_Medium value),
    Result hard(_Hard value),
    @required Result orElse(),
  });
}

class _$DifficultyLevelTearOff {
  const _$DifficultyLevelTearOff();

  _Easy easy() {
    return const _Easy();
  }

  _Medium medium() {
    return const _Medium();
  }

  _Hard hard() {
    return const _Hard();
  }
}

const $DifficultyLevel = _$DifficultyLevelTearOff();

class _$_Easy implements _Easy {
  const _$_Easy();

  @override
  String toString() {
    return 'DifficultyLevel.easy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Easy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result easy(),
    @required Result medium(),
    @required Result hard(),
  }) {
    assert(easy != null);
    assert(medium != null);
    assert(hard != null);
    return easy();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result easy(),
    Result medium(),
    Result hard(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (easy != null) {
      return easy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result easy(_Easy value),
    @required Result medium(_Medium value),
    @required Result hard(_Hard value),
  }) {
    assert(easy != null);
    assert(medium != null);
    assert(hard != null);
    return easy(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result easy(_Easy value),
    Result medium(_Medium value),
    Result hard(_Hard value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (easy != null) {
      return easy(this);
    }
    return orElse();
  }
}

abstract class _Easy implements DifficultyLevel {
  const factory _Easy() = _$_Easy;
}

class _$_Medium implements _Medium {
  const _$_Medium();

  @override
  String toString() {
    return 'DifficultyLevel.medium()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Medium);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result easy(),
    @required Result medium(),
    @required Result hard(),
  }) {
    assert(easy != null);
    assert(medium != null);
    assert(hard != null);
    return medium();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result easy(),
    Result medium(),
    Result hard(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (medium != null) {
      return medium();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result easy(_Easy value),
    @required Result medium(_Medium value),
    @required Result hard(_Hard value),
  }) {
    assert(easy != null);
    assert(medium != null);
    assert(hard != null);
    return medium(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result easy(_Easy value),
    Result medium(_Medium value),
    Result hard(_Hard value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (medium != null) {
      return medium(this);
    }
    return orElse();
  }
}

abstract class _Medium implements DifficultyLevel {
  const factory _Medium() = _$_Medium;
}

class _$_Hard implements _Hard {
  const _$_Hard();

  @override
  String toString() {
    return 'DifficultyLevel.hard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Hard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result easy(),
    @required Result medium(),
    @required Result hard(),
  }) {
    assert(easy != null);
    assert(medium != null);
    assert(hard != null);
    return hard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result easy(),
    Result medium(),
    Result hard(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hard != null) {
      return hard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result easy(_Easy value),
    @required Result medium(_Medium value),
    @required Result hard(_Hard value),
  }) {
    assert(easy != null);
    assert(medium != null);
    assert(hard != null);
    return hard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result easy(_Easy value),
    Result medium(_Medium value),
    Result hard(_Hard value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hard != null) {
      return hard(this);
    }
    return orElse();
  }
}

abstract class _Hard implements DifficultyLevel {
  const factory _Hard() = _$_Hard;
}
