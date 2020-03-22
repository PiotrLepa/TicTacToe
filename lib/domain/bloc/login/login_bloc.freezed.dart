// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  Login login({@required String username, @required String password}) {
    return Login(
      username: username,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  String get username;

  String get password;

  $LoginEventCopyWith<LoginEvent> get copyWith;
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;

  $Res call({String username, String password});
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;

  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class $LoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;

  @override
  $Res call({String username, String password});
}

class _$LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(Login(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$Login implements Login {
  const _$Login({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @override
  $LoginCopyWith<Login> get copyWith =>
      _$LoginCopyWithImpl<Login>(this, _$identity);
}

abstract class Login implements LoginEvent {
  const factory Login({@required String username, @required String password}) =
      _$Login;

  @override
  String get username;

  @override
  String get password;

  @override
  $LoginCopyWith<Login> get copyWith;
}

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Nothing nothing(
      {RawKeyString usernameErrorKey, RawKeyString passwordErrorKey}) {
    return Nothing(
      usernameErrorKey: usernameErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }

  RenderInputError renderInputError(
      {RawKeyString usernameErrorKey, RawKeyString passwordErrorKey}) {
    return RenderInputError(
      usernameErrorKey: usernameErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }

  Loading loading(
      {RawKeyString usernameErrorKey, RawKeyString passwordErrorKey}) {
    return Loading(
      usernameErrorKey: usernameErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  RawKeyString get usernameErrorKey;

  RawKeyString get passwordErrorKey;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result loading(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    @required Result orElse(),
  });

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;

  $Res call({RawKeyString usernameErrorKey, RawKeyString passwordErrorKey});
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;

  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object usernameErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(_value.copyWith(
      usernameErrorKey: usernameErrorKey == freezed
          ? _value.usernameErrorKey
          : usernameErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

abstract class $NothingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $NothingCopyWith(Nothing value, $Res Function(Nothing) then) =
      _$NothingCopyWithImpl<$Res>;

  @override
  $Res call({RawKeyString usernameErrorKey, RawKeyString passwordErrorKey});
}

class _$NothingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $NothingCopyWith<$Res> {
  _$NothingCopyWithImpl(Nothing _value, $Res Function(Nothing) _then)
      : super(_value, (v) => _then(v as Nothing));

  @override
  Nothing get _value => super._value as Nothing;

  @override
  $Res call({
    Object usernameErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(Nothing(
      usernameErrorKey: usernameErrorKey == freezed
          ? _value.usernameErrorKey
          : usernameErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$Nothing implements Nothing {
  const _$Nothing({this.usernameErrorKey, this.passwordErrorKey});

  @override
  final RawKeyString usernameErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.nothing(usernameErrorKey: $usernameErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Nothing &&
            (identical(other.usernameErrorKey, usernameErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.usernameErrorKey, usernameErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $NothingCopyWith<Nothing> get copyWith =>
      _$NothingCopyWithImpl<Nothing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    return nothing(usernameErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result loading(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing(usernameErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing(this);
    }
    return orElse();
  }
}

abstract class Nothing implements LoginState {
  const factory Nothing(
      {RawKeyString usernameErrorKey,
      RawKeyString passwordErrorKey}) = _$Nothing;

  @override
  RawKeyString get usernameErrorKey;

  @override
  RawKeyString get passwordErrorKey;

  @override
  $NothingCopyWith<Nothing> get copyWith;
}

abstract class $RenderInputErrorCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory $RenderInputErrorCopyWith(
          RenderInputError value, $Res Function(RenderInputError) then) =
      _$RenderInputErrorCopyWithImpl<$Res>;

  @override
  $Res call({RawKeyString usernameErrorKey, RawKeyString passwordErrorKey});
}

class _$RenderInputErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements $RenderInputErrorCopyWith<$Res> {
  _$RenderInputErrorCopyWithImpl(
      RenderInputError _value, $Res Function(RenderInputError) _then)
      : super(_value, (v) => _then(v as RenderInputError));

  @override
  RenderInputError get _value => super._value as RenderInputError;

  @override
  $Res call({
    Object usernameErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(RenderInputError(
      usernameErrorKey: usernameErrorKey == freezed
          ? _value.usernameErrorKey
          : usernameErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$RenderInputError implements RenderInputError {
  const _$RenderInputError({this.usernameErrorKey, this.passwordErrorKey});

  @override
  final RawKeyString usernameErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.renderInputError(usernameErrorKey: $usernameErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderInputError &&
            (identical(other.usernameErrorKey, usernameErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.usernameErrorKey, usernameErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $RenderInputErrorCopyWith<RenderInputError> get copyWith =>
      _$RenderInputErrorCopyWithImpl<RenderInputError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    return renderInputError(usernameErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result loading(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderInputError != null) {
      return renderInputError(usernameErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    return renderInputError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderInputError != null) {
      return renderInputError(this);
    }
    return orElse();
  }
}

abstract class RenderInputError implements LoginState {
  const factory RenderInputError(
      {RawKeyString usernameErrorKey,
      RawKeyString passwordErrorKey}) = _$RenderInputError;

  @override
  RawKeyString get usernameErrorKey;

  @override
  RawKeyString get passwordErrorKey;

  @override
  $RenderInputErrorCopyWith<RenderInputError> get copyWith;
}

abstract class $LoadingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;

  @override
  $Res call({RawKeyString usernameErrorKey, RawKeyString passwordErrorKey});
}

class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object usernameErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(Loading(
      usernameErrorKey: usernameErrorKey == freezed
          ? _value.usernameErrorKey
          : usernameErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$Loading implements Loading {
  const _$Loading({this.usernameErrorKey, this.passwordErrorKey});

  @override
  final RawKeyString usernameErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.loading(usernameErrorKey: $usernameErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.usernameErrorKey, usernameErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.usernameErrorKey, usernameErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(usernameErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    return loading(usernameErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    Result loading(
        RawKeyString usernameErrorKey, RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(usernameErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading(
      {RawKeyString usernameErrorKey,
      RawKeyString passwordErrorKey}) = _$Loading;

  @override
  RawKeyString get usernameErrorKey;

  @override
  RawKeyString get passwordErrorKey;

  @override
  $LoadingCopyWith<Loading> get copyWith;
}
