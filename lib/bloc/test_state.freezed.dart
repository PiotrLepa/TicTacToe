// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of test_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$TestState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(String result),
    @required Result error(String message),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(String result),
    Result error(String message),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

class _$_Progress implements _Progress {
  const _$_Progress();

  @override
  String toString() {
    return 'TestState.progress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Progress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(String result),
    @required Result error(String message),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return progress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(String result),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (progress != null) {
      return progress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return progress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress implements TestState {
  const factory _Progress() = _$_Progress;
}

class _$_Success implements _Success {
  const _$_Success(this.result) : assert(result != null);

  @override
  final String result;

  @override
  String toString() {
    return 'TestState.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ result.hashCode;

  @override
  _$_Success copyWith({
    Object result = freezed,
  }) {
    assert(result != null);
    return _$_Success(
      result == freezed ? this.result : result as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(String result),
    @required Result error(String message),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return success(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(String result),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TestState {
  const factory _Success(String result) = _$_Success;

  String get result;

  _Success copyWith({String result});
}

class _$_Error implements _Error {
  const _$_Error(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'TestState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ message.hashCode;

  @override
  _$_Error copyWith({
    Object message = freezed,
  }) {
    assert(message != null);
    return _$_Error(
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(String result),
    @required Result error(String message),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(String result),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TestState {
  const factory _Error(String message) = _$_Error;

  String get message;

  _Error copyWith({String message});
}
