// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of login_request;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

mixin _$LoginRequest {
  @JsonKey(name: 'username')
  String get email;

  String get password;

  @JsonKey(name: 'grant_type')
  String get grantType;

  LoginRequest copyWith(
      {@JsonKey(name: 'username') String email,
      String password,
      @JsonKey(name: 'grant_type') String grantType});

  Map<String, dynamic> toJson();
}

class _$LoginRequestTearOff {
  const _$LoginRequestTearOff();

  _LoginRequest call(
      {@required @JsonKey(name: 'username') String email,
      @required String password,
      @required @JsonKey(name: 'grant_type') String grantType}) {
    return _LoginRequest(
      email: email,
      password: password,
      grantType: grantType,
    );
  }
}

const $LoginRequest = _$LoginRequestTearOff();

@JsonSerializable()
class _$_LoginRequest implements _LoginRequest {
  const _$_LoginRequest(
      {@required @JsonKey(name: 'username') this.email,
      @required this.password,
      @required @JsonKey(name: 'grant_type') this.grantType})
      : assert(email != null),
        assert(password != null),
        assert(grantType != null);

  factory _$_LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginRequestFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'grant_type')
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
  _$_LoginRequest copyWith({
    Object email = freezed,
    Object password = freezed,
    Object grantType = freezed,
  }) {
    return _$_LoginRequest(
      email: email == freezed ? this.email : email as String,
      password: password == freezed ? this.password : password as String,
      grantType: grantType == freezed ? this.grantType : grantType as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginRequestToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest(
          {@required @JsonKey(name: 'username') String email,
          @required String password,
          @required @JsonKey(name: 'grant_type') String grantType}) =
      _$_LoginRequest;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginRequest.fromJson;

  @override
  @JsonKey(name: 'username')
  String get email;

  @override
  String get password;

  @override
  @JsonKey(name: 'grant_type')
  String get grantType;

  @override
  _LoginRequest copyWith(
      {@JsonKey(name: 'username') String email,
      String password,
      @JsonKey(name: 'grant_type') String grantType});
}
