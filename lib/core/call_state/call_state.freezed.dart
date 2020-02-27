// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const

part of call_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$CallState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(RawKeyString errorMessage),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(T result),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(Progress<T> value),
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(Progress<T> value),
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  });
}

class _$Progress<T> implements Progress<T> {
  const _$Progress();

  @override
  String toString() {
    return 'CallState<$T>.progress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Progress<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(RawKeyString errorMessage),
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
    Result error(RawKeyString errorMessage),
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
    @required Result progress(Progress<T> value),
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return progress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(Progress<T> value),
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class Progress<T> implements CallState<T> {
  const factory Progress() = _$Progress<T>;
}

class _$Success<T> implements Success<T> {
  const _$Success(this.result) : assert(result != null);

  @override
  final T result;

  @override
  String toString() {
    return 'CallState<$T>.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  _$Success<T> copyWith({
    Object result = freezed,
  }) {
    return _$Success<T>(
      result == freezed ? this.result : result as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(RawKeyString errorMessage),
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
    Result error(RawKeyString errorMessage),
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
    @required Result progress(Progress<T> value),
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(Progress<T> value),
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements CallState<T> {
  const factory Success(T result) = _$Success<T>;

  T get result;

  Success<T> copyWith({T result});
}

class _$Error<T> implements Error<T> {
  const _$Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final RawKeyString errorMessage;

  @override
  String toString() {
    return 'CallState<$T>.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<T> &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$Error<T> copyWith({
    Object errorMessage = freezed,
  }) {
    return _$Error<T>(
      errorMessage == freezed
          ? this.errorMessage
          : errorMessage as RawKeyString,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result progress(),
    @required Result success(T result),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result progress(),
    Result success(T result),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result progress(Progress<T> value),
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result progress(Progress<T> value),
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements CallState<T> {
  const factory Error(RawKeyString errorMessage) = _$Error<T>;

  RawKeyString get errorMessage;

  Error<T> copyWith({RawKeyString errorMessage});
}
