// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  Login login({@required String email, @required String password}) {
    return Login(
      email: email,
      password: password,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  String get email;
  String get password;

  $LoginEventCopyWith<LoginEvent> get copyWith;
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class $LoginCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

class _$LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(Login(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$Login implements Login {
  const _$Login({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  $LoginCopyWith<Login> get copyWith =>
      _$LoginCopyWithImpl<Login>(this, _$identity);
}

abstract class Login implements LoginEvent {
  const factory Login({@required String email, @required String password}) =
      _$Login;

  @override
  String get email;
  @override
  String get password;
  @override
  $LoginCopyWith<Login> get copyWith;
}

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  Nothing nothing({RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) {
    return Nothing(
      emailErrorKey: emailErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }

  RenderInputError renderInputError(
      {RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) {
    return RenderInputError(
      emailErrorKey: emailErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }

  Loading loading({RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) {
    return Loading(
      emailErrorKey: emailErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }

  Error error(RawKeyString errorMessage,
      {RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) {
    return Error(
      errorMessage,
      emailErrorKey: emailErrorKey,
      passwordErrorKey: passwordErrorKey,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  RawKeyString get emailErrorKey;
  RawKeyString get passwordErrorKey;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
            RawKeyString passwordErrorKey),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result loading(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
        RawKeyString passwordErrorKey),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  });

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({RawKeyString emailErrorKey, RawKeyString passwordErrorKey});
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object emailErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(_value.copyWith(
      emailErrorKey: emailErrorKey == freezed
          ? _value.emailErrorKey
          : emailErrorKey as RawKeyString,
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
  $Res call({RawKeyString emailErrorKey, RawKeyString passwordErrorKey});
}

class _$NothingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $NothingCopyWith<$Res> {
  _$NothingCopyWithImpl(Nothing _value, $Res Function(Nothing) _then)
      : super(_value, (v) => _then(v as Nothing));

  @override
  Nothing get _value => super._value as Nothing;

  @override
  $Res call({
    Object emailErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(Nothing(
      emailErrorKey: emailErrorKey == freezed
          ? _value.emailErrorKey
          : emailErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$Nothing implements Nothing {
  const _$Nothing({this.emailErrorKey, this.passwordErrorKey});

  @override
  final RawKeyString emailErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.nothing(emailErrorKey: $emailErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Nothing &&
            (identical(other.emailErrorKey, emailErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.emailErrorKey, emailErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $NothingCopyWith<Nothing> get copyWith =>
      _$NothingCopyWithImpl<Nothing>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
            RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return nothing(emailErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result loading(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
        RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nothing != null) {
      return nothing(emailErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return nothing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    Result error(Error value),
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
      {RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) = _$Nothing;

  @override
  RawKeyString get emailErrorKey;
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
  $Res call({RawKeyString emailErrorKey, RawKeyString passwordErrorKey});
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
    Object emailErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(RenderInputError(
      emailErrorKey: emailErrorKey == freezed
          ? _value.emailErrorKey
          : emailErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$RenderInputError implements RenderInputError {
  const _$RenderInputError({this.emailErrorKey, this.passwordErrorKey});

  @override
  final RawKeyString emailErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.renderInputError(emailErrorKey: $emailErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderInputError &&
            (identical(other.emailErrorKey, emailErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.emailErrorKey, emailErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $RenderInputErrorCopyWith<RenderInputError> get copyWith =>
      _$RenderInputErrorCopyWithImpl<RenderInputError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
            RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return renderInputError(emailErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result loading(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
        RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderInputError != null) {
      return renderInputError(emailErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return renderInputError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    Result error(Error value),
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
      {RawKeyString emailErrorKey,
      RawKeyString passwordErrorKey}) = _$RenderInputError;

  @override
  RawKeyString get emailErrorKey;
  @override
  RawKeyString get passwordErrorKey;
  @override
  $RenderInputErrorCopyWith<RenderInputError> get copyWith;
}

abstract class $LoadingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({RawKeyString emailErrorKey, RawKeyString passwordErrorKey});
}

class _$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object emailErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(Loading(
      emailErrorKey: emailErrorKey == freezed
          ? _value.emailErrorKey
          : emailErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$Loading implements Loading {
  const _$Loading({this.emailErrorKey, this.passwordErrorKey});

  @override
  final RawKeyString emailErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.loading(emailErrorKey: $emailErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.emailErrorKey, emailErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.emailErrorKey, emailErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
            RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return loading(emailErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result loading(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
        RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(emailErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    Result error(Error value),
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
      {RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) = _$Loading;

  @override
  RawKeyString get emailErrorKey;
  @override
  RawKeyString get passwordErrorKey;
  @override
  $LoadingCopyWith<Loading> get copyWith;
}

abstract class $ErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {RawKeyString errorMessage,
      RawKeyString emailErrorKey,
      RawKeyString passwordErrorKey});
}

class _$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object errorMessage = freezed,
    Object emailErrorKey = freezed,
    Object passwordErrorKey = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as RawKeyString,
      emailErrorKey: emailErrorKey == freezed
          ? _value.emailErrorKey
          : emailErrorKey as RawKeyString,
      passwordErrorKey: passwordErrorKey == freezed
          ? _value.passwordErrorKey
          : passwordErrorKey as RawKeyString,
    ));
  }
}

class _$Error implements Error {
  const _$Error(this.errorMessage, {this.emailErrorKey, this.passwordErrorKey})
      : assert(errorMessage != null);

  @override
  final RawKeyString errorMessage;
  @override
  final RawKeyString emailErrorKey;
  @override
  final RawKeyString passwordErrorKey;

  @override
  String toString() {
    return 'LoginState.error(errorMessage: $errorMessage, emailErrorKey: $emailErrorKey, passwordErrorKey: $passwordErrorKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.emailErrorKey, emailErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.emailErrorKey, emailErrorKey)) &&
            (identical(other.passwordErrorKey, passwordErrorKey) ||
                const DeepCollectionEquality()
                    .equals(other.passwordErrorKey, passwordErrorKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(emailErrorKey) ^
      const DeepCollectionEquality().hash(passwordErrorKey);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result nothing(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result renderInputError(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result loading(
            RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    @required
        Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
            RawKeyString passwordErrorKey),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return error(errorMessage, emailErrorKey, passwordErrorKey);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nothing(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result renderInputError(
        RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result loading(RawKeyString emailErrorKey, RawKeyString passwordErrorKey),
    Result error(RawKeyString errorMessage, RawKeyString emailErrorKey,
        RawKeyString passwordErrorKey),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage, emailErrorKey, passwordErrorKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nothing(Nothing value),
    @required Result renderInputError(RenderInputError value),
    @required Result loading(Loading value),
    @required Result error(Error value),
  }) {
    assert(nothing != null);
    assert(renderInputError != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nothing(Nothing value),
    Result renderInputError(RenderInputError value),
    Result loading(Loading value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements LoginState {
  const factory Error(RawKeyString errorMessage,
      {RawKeyString emailErrorKey, RawKeyString passwordErrorKey}) = _$Error;

  RawKeyString get errorMessage;
  @override
  RawKeyString get emailErrorKey;
  @override
  RawKeyString get passwordErrorKey;
  @override
  $ErrorCopyWith<Error> get copyWith;
}
