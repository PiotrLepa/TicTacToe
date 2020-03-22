// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of login_request;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginRequestTearOff {
  const _$LoginRequestTearOff();

  _LoginRequest call(
      {@required String email,
      @required String password,
      @required String grantType}) {
    return _LoginRequest(
      email: email,
      password: password,
      grantType: grantType,
    );
  }
}

// ignore: unused_element
const $LoginRequest = _$LoginRequestTearOff();

mixin _$LoginRequest {
  String get email;
  String get password;
  String get grantType;

  $LoginRequestCopyWith<LoginRequest> get copyWith;
}

abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res>;
  $Res call({String email, String password, String grantType});
}

class _$LoginRequestCopyWithImpl<$Res> implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  final LoginRequest _value;
  // ignore: unused_field
  final $Res Function(LoginRequest) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object grantType = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      grantType: grantType == freezed ? _value.grantType : grantType as String,
    ));
  }
}

abstract class _$LoginRequestCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$LoginRequestCopyWith(
          _LoginRequest value, $Res Function(_LoginRequest) then) =
      __$LoginRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String grantType});
}

class __$LoginRequestCopyWithImpl<$Res> extends _$LoginRequestCopyWithImpl<$Res>
    implements _$LoginRequestCopyWith<$Res> {
  __$LoginRequestCopyWithImpl(
      _LoginRequest _value, $Res Function(_LoginRequest) _then)
      : super(_value, (v) => _then(v as _LoginRequest));

  @override
  _LoginRequest get _value => super._value as _LoginRequest;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object grantType = freezed,
  }) {
    return _then(_LoginRequest(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      grantType: grantType == freezed ? _value.grantType : grantType as String,
    ));
  }
}

class _$_LoginRequest implements _LoginRequest {
  const _$_LoginRequest(
      {@required this.email, @required this.password, @required this.grantType})
      : assert(email != null),
        assert(password != null),
        assert(grantType != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String grantType;

  @override
  String toString() {
    return 'LoginRequest(email: $email, password: $password, grantType: $grantType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginRequest &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(grantType);

  @override
  _$LoginRequestCopyWith<_LoginRequest> get copyWith =>
      __$LoginRequestCopyWithImpl<_LoginRequest>(this, _$identity);
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
      {@required String email,
      @required String password,
      @required String grantType}) = _$_LoginRequest;

  @override
  String get email;
  @override
  String get password;
  @override
  String get grantType;
  @override
  _$LoginRequestCopyWith<_LoginRequest> get copyWith;
}
