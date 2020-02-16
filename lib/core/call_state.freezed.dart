// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of call_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CallState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(ApiException ex),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(T result),
    Result error(ApiException ex),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(_Progress<T> value),
    @required Result success(_Success<T> value),
    @required Result error(_Error<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress<T> value),
    Result success(_Success<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  });
}

class _$_Progress<T> implements _Progress<T> {
  const _$_Progress();

  @override
  String toString() {
    return 'CallState<$T>.progress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Progress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(ApiException ex),
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
    Result success(T result),
    Result error(ApiException ex),
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
    @required Result progress(_Progress<T> value),
    @required Result success(_Success<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return progress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress<T> value),
    Result success(_Success<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress<T> implements CallState<T> {
  const factory _Progress() = _$_Progress<T>;
}

class _$_Success<T> implements _Success<T> {
  const _$_Success(this.result) : assert(result != null);

  @override
  final T result;

  @override
  String toString() {
    return 'CallState<$T>.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ result.hashCode;

  @override
  _$_Success<T> copyWith({
    Object result = freezed,
  }) {
    assert(result != null);
    return _$_Success<T>(
      result == freezed ? this.result : result as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(ApiException ex),
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
    Result success(T result),
    Result error(ApiException ex),
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
    @required Result progress(_Progress<T> value),
    @required Result success(_Success<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress<T> value),
    Result success(_Success<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements CallState<T> {
  const factory _Success(T result) = _$_Success<T>;

  T get result;

  _Success<T> copyWith({T result});
}

class _$_Error<T> implements _Error<T> {
  const _$_Error(this.ex) : assert(ex != null);

  @override
  final ApiException ex;

  @override
  String toString() {
    return 'CallState<$T>.error(ex: $ex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T> &&
            (identical(other.ex, ex) ||
                const DeepCollectionEquality().equals(other.ex, ex)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ ex.hashCode;

  @override
  _$_Error<T> copyWith({
    Object ex = freezed,
  }) {
    assert(ex != null);
    return _$_Error<T>(
      ex == freezed ? this.ex : ex as ApiException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(ApiException ex),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(ex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(T result),
    Result error(ApiException ex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(ex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(_Progress<T> value),
    @required Result success(_Success<T> value),
    @required Result error(_Error<T> value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(_Progress<T> value),
    Result success(_Success<T> value),
    Result error(_Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements CallState<T> {
  const factory _Error(ApiException ex) = _$_Error<T>;

  ApiException get ex;

  _Error<T> copyWith({ApiException ex});
}
