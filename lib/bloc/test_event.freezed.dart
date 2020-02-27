// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const

part of test_event;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

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
