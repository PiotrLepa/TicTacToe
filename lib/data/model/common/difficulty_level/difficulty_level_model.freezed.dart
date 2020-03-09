// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of difficulty_level_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

DifficultyLevelModel _$DifficultyLevelModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'easy':
      return _Easy.fromJson(json);
    case 'medium':
      return _Medium.fromJson(json);
    case 'hard':
      return _Hard.fromJson(json);

    default:
      throw FallThroughError();
  }
}

mixin _$DifficultyLevelModel {
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

  Map<String, dynamic> toJson();
}

class _$DifficultyLevelModelTearOff {
  const _$DifficultyLevelModelTearOff();

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

const $DifficultyLevelModel = _$DifficultyLevelModelTearOff();

@JsonSerializable()
class _$_Easy implements _Easy {
  const _$_Easy();

  factory _$_Easy.fromJson(Map<String, dynamic> json) =>
      _$_$_EasyFromJson(json);

  @override
  String toString() {
    return 'DifficultyLevelModel.easy()';
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EasyToJson(this)..['runtimeType'] = 'easy';
  }
}

abstract class _Easy implements DifficultyLevelModel {
  const factory _Easy() = _$_Easy;

  factory _Easy.fromJson(Map<String, dynamic> json) = _$_Easy.fromJson;
}

@JsonSerializable()
class _$_Medium implements _Medium {
  const _$_Medium();

  factory _$_Medium.fromJson(Map<String, dynamic> json) =>
      _$_$_MediumFromJson(json);

  @override
  String toString() {
    return 'DifficultyLevelModel.medium()';
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediumToJson(this)..['runtimeType'] = 'medium';
  }
}

abstract class _Medium implements DifficultyLevelModel {
  const factory _Medium() = _$_Medium;

  factory _Medium.fromJson(Map<String, dynamic> json) = _$_Medium.fromJson;
}

@JsonSerializable()
class _$_Hard implements _Hard {
  const _$_Hard();

  factory _$_Hard.fromJson(Map<String, dynamic> json) =>
      _$_$_HardFromJson(json);

  @override
  String toString() {
    return 'DifficultyLevelModel.hard()';
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HardToJson(this)..['runtimeType'] = 'hard';
  }
}

abstract class _Hard implements DifficultyLevelModel {
  const factory _Hard() = _$_Hard;

  factory _Hard.fromJson(Map<String, dynamic> json) = _$_Hard.fromJson;
}
