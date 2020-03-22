// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of test_state;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TestStateTearOff {
  const _$TestStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Progress progress() {
    return const _Progress();
  }

  _Success success(String result) {
    return _Success(
      result,
    );
  }

  _Error error(RawKeyString errorMessage) {
    return _Error(
      errorMessage,
    );
  }
}

// ignore: unused_element
const $TestState = _$TestStateTearOff();

mixin _$TestState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result progress(),
    @required Result success(String result),
    @required Result error(RawKeyString errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progress(),
    Result success(String result),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result progress(_Progress value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res>;
}

class _$TestStateCopyWithImpl<$Res> implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  final TestState _value;
  // ignore: unused_field
  final $Res Function(TestState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$TestStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TestState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result progress(),
    @required Result success(String result),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progress(),
    Result success(String result),
    Result error(RawKeyString errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result progress(_Progress value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TestState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ProgressCopyWith<$Res> {
  factory _$ProgressCopyWith(_Progress value, $Res Function(_Progress) then) =
  __$ProgressCopyWithImpl<$Res>;
}

class __$ProgressCopyWithImpl<$Res> extends _$TestStateCopyWithImpl<$Res>
    implements _$ProgressCopyWith<$Res> {
  __$ProgressCopyWithImpl(_Progress _value, $Res Function(_Progress) _then)
      : super(_value, (v) => _then(v as _Progress));

  @override
  _Progress get _value => super._value as _Progress;
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
    @required Result initial(),
    @required Result progress(),
    @required Result success(String result),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return progress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progress(),
    Result success(String result),
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
    @required Result initial(_Initial value),
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return progress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
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

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
  __$SuccessCopyWithImpl<$Res>;
  $Res call({String result});
}

class __$SuccessCopyWithImpl<$Res> extends _$TestStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_Success(
      result == freezed ? _value.result : result as String,
    ));
  }
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
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result progress(),
    @required Result success(String result),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return success(result);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progress(),
    Result success(String result),
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
    @required Result initial(_Initial value),
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
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
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
  __$ErrorCopyWithImpl<$Res>;
  $Res call({RawKeyString errorMessage});
}

class __$ErrorCopyWithImpl<$Res> extends _$TestStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as RawKeyString,
    ));
  }
}

class _$_Error implements _Error {
  const _$_Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final RawKeyString errorMessage;

  @override
  String toString() {
    return 'TestState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result progress(),
    @required Result success(String result),
    @required Result error(RawKeyString errorMessage),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result progress(),
    Result success(String result),
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
    @required Result initial(_Initial value),
    @required Result progress(_Progress value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(progress != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
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
  const factory _Error(RawKeyString errorMessage) = _$_Error;

  RawKeyString get errorMessage;
  _$ErrorCopyWith<_Error> get copyWith;
}
