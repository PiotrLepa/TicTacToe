// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of test_event;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TestEventTearOff {
  const _$TestEventTearOff();

  _Login login() {
    return const _Login();
  }

  _FetchGames fetchGames() {
    return const _FetchGames();
  }

  _MakeError makeError() {
    return const _MakeError();
  }
}

// ignore: unused_element
const $TestEvent = _$TestEventTearOff();

mixin _$TestEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result fetchGames(),
    @required Result makeError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result fetchGames(),
    Result makeError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_Login value),
    @required Result fetchGames(_FetchGames value),
    @required Result makeError(_MakeError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_Login value),
    Result fetchGames(_FetchGames value),
    Result makeError(_MakeError value),
    @required Result orElse(),
  });
}

abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res>;
}

class _$TestEventCopyWithImpl<$Res> implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  final TestEvent _value;
  // ignore: unused_field
  final $Res Function(TestEvent) _then;
}

abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
}

class __$LoginCopyWithImpl<$Res> extends _$TestEventCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;
}

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'TestEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result fetchGames(),
    @required Result makeError(),
  }) {
    assert(login != null);
    assert(fetchGames != null);
    assert(makeError != null);
    return login();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result fetchGames(),
    Result makeError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_Login value),
    @required Result fetchGames(_FetchGames value),
    @required Result makeError(_MakeError value),
  }) {
    assert(login != null);
    assert(fetchGames != null);
    assert(makeError != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_Login value),
    Result fetchGames(_FetchGames value),
    Result makeError(_MakeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements TestEvent {
  const factory _Login() = _$_Login;
}

abstract class _$FetchGamesCopyWith<$Res> {
  factory _$FetchGamesCopyWith(_FetchGames value,
      $Res Function(_FetchGames) then) =
  __$FetchGamesCopyWithImpl<$Res>;
}

class __$FetchGamesCopyWithImpl<$Res> extends _$TestEventCopyWithImpl<$Res>
    implements _$FetchGamesCopyWith<$Res> {
  __$FetchGamesCopyWithImpl(_FetchGames _value,
      $Res Function(_FetchGames) _then)
      : super(_value, (v) => _then(v as _FetchGames));

  @override
  _FetchGames get _value => super._value as _FetchGames;
}

class _$_FetchGames implements _FetchGames {
  const _$_FetchGames();

  @override
  String toString() {
    return 'TestEvent.fetchGames()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchGames);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result fetchGames(),
    @required Result makeError(),
  }) {
    assert(login != null);
    assert(fetchGames != null);
    assert(makeError != null);
    return fetchGames();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result fetchGames(),
    Result makeError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchGames != null) {
      return fetchGames();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_Login value),
    @required Result fetchGames(_FetchGames value),
    @required Result makeError(_MakeError value),
  }) {
    assert(login != null);
    assert(fetchGames != null);
    assert(makeError != null);
    return fetchGames(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_Login value),
    Result fetchGames(_FetchGames value),
    Result makeError(_MakeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchGames != null) {
      return fetchGames(this);
    }
    return orElse();
  }
}

abstract class _FetchGames implements TestEvent {
  const factory _FetchGames() = _$_FetchGames;
}

abstract class _$MakeErrorCopyWith<$Res> {
  factory _$MakeErrorCopyWith(_MakeError value,
      $Res Function(_MakeError) then) =
  __$MakeErrorCopyWithImpl<$Res>;
}

class __$MakeErrorCopyWithImpl<$Res> extends _$TestEventCopyWithImpl<$Res>
    implements _$MakeErrorCopyWith<$Res> {
  __$MakeErrorCopyWithImpl(_MakeError _value, $Res Function(_MakeError) _then)
      : super(_value, (v) => _then(v as _MakeError));

  @override
  _MakeError get _value => super._value as _MakeError;
}

class _$_MakeError implements _MakeError {
  const _$_MakeError();

  @override
  String toString() {
    return 'TestEvent.makeError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MakeError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(),
    @required Result fetchGames(),
    @required Result makeError(),
  }) {
    assert(login != null);
    assert(fetchGames != null);
    assert(makeError != null);
    return makeError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(),
    Result fetchGames(),
    Result makeError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (makeError != null) {
      return makeError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_Login value),
    @required Result fetchGames(_FetchGames value),
    @required Result makeError(_MakeError value),
  }) {
    assert(login != null);
    assert(fetchGames != null);
    assert(makeError != null);
    return makeError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_Login value),
    Result fetchGames(_FetchGames value),
    Result makeError(_MakeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (makeError != null) {
      return makeError(this);
    }
    return orElse();
  }
}

abstract class _MakeError implements TestEvent {
  const factory _MakeError() = _$_MakeError;
}
