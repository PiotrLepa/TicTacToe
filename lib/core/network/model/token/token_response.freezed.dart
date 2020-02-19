// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of network_token;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return _TokenResponse.fromJson(json);
}

mixin _$TokenResponse {
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'token_type')
  String get tokenType;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  String get scope;

  TokenResponse copyWith(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_TokenResponse implements _TokenResponse {
  const _$_TokenResponse(
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

  factory _$_TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_TokenResponseFromJson(json);

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
    return 'TokenResponse(accessToken: $accessToken, tokenType: $tokenType, refreshToken: $refreshToken, expiresIn: $expiresIn, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TokenResponse &&
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
      accessToken.hashCode ^
      tokenType.hashCode ^
      refreshToken.hashCode ^
      expiresIn.hashCode ^
      scope.hashCode;

  @override
  _$_TokenResponse copyWith({
    Object accessToken = freezed,
    Object tokenType = freezed,
    Object refreshToken = freezed,
    Object expiresIn = freezed,
    Object scope = freezed,
  }) {
    assert(accessToken != null);
    assert(tokenType != null);
    assert(refreshToken != null);
    assert(expiresIn != null);
    assert(scope != null);
    return _$_TokenResponse(
      accessToken == freezed ? this.accessToken : accessToken as String,
      tokenType == freezed ? this.tokenType : tokenType as String,
      refreshToken == freezed ? this.refreshToken : refreshToken as String,
      expiresIn == freezed ? this.expiresIn : expiresIn as int,
      scope == freezed ? this.scope : scope as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TokenResponseToJson(this);
  }
}

abstract class _TokenResponse implements TokenResponse {
  const factory _TokenResponse(
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope) = _$_TokenResponse;

  factory _TokenResponse.fromJson(Map<String, dynamic> json) =
      _$_TokenResponse.fromJson;

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
  _TokenResponse copyWith(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'expires_in') int expiresIn,
      String scope});
}
