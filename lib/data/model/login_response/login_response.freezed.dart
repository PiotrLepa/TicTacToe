// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of login_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

mixin _$LoginResponse {
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'token_type')
  String get tokenType;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  String get scope;

  LoginResponse copyWith(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope});

  Map<String, dynamic> toJson();
}

class _$LoginResponseTearOff {
  const _$LoginResponseTearOff();

  _LoginResponse call(
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope) {
    return _LoginResponse(
      accessToken,
      tokenType,
      refreshToken,
      expiresIn,
      scope,
    );
  }
}

const $LoginResponse = _$LoginResponseTearOff();

@JsonSerializable()
class _$_LoginResponse implements _LoginResponse {
  const _$_LoginResponse(
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'expires_in') this.expiresIn,
      this.scope)
      : assert(accessToken != null),
        assert(tokenType != null),
        assert(refreshToken != null),
        assert(expiresIn != null),
        assert(scope != null);

  factory _$_LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResponseFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  final String scope;

  @override
  String toString() {
    return 'LoginResponse(accessToken: $accessToken, tokenType: $tokenType, refreshToken: $refreshToken, expiresIn: $expiresIn, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(scope);

  @override
  _$_LoginResponse copyWith({
    Object accessToken = freezed,
    Object tokenType = freezed,
    Object refreshToken = freezed,
    Object expiresIn = freezed,
    Object scope = freezed,
  }) {
    return _$_LoginResponse(
      accessToken == freezed ? this.accessToken : accessToken as String,
      tokenType == freezed ? this.tokenType : tokenType as String,
      refreshToken == freezed ? this.refreshToken : refreshToken as String,
      expiresIn == freezed ? this.expiresIn : expiresIn as int,
      scope == freezed ? this.scope : scope as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResponseToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope) = _$_LoginResponse;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$_LoginResponse.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  String get scope;

  @override
  _LoginResponse copyWith(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope});
}
