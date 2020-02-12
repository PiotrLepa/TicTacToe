// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of network_token;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) {
  return _TokenResponse.fromJson(json);
}

abstract class _$TokenResponse {
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
class _$_TokenResponse with DiagnosticableTreeMixin implements _TokenResponse {
  const _$_TokenResponse(
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'token_type') this.tokenType,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'expires_in') this.expiresIn,
      this.scope);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'TokenResponse(accessToken: $accessToken, tokenType: $tokenType, refreshToken: $refreshToken, expiresIn: $expiresIn, scope: $scope)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TokenResponse'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('tokenType', tokenType))
      ..add(DiagnosticsProperty('refreshToken', refreshToken))
      ..add(DiagnosticsProperty('expiresIn', expiresIn))
      ..add(DiagnosticsProperty('scope', scope));
  }

  @override
  bool operator ==(dynamic other) {
    return other is _TokenResponse &&
        (identical(other.accessToken, accessToken) ||
            other.accessToken == accessToken) &&
        (identical(other.tokenType, tokenType) ||
            other.tokenType == tokenType) &&
        (identical(other.refreshToken, refreshToken) ||
            other.refreshToken == refreshToken) &&
        (identical(other.expiresIn, expiresIn) ||
            other.expiresIn == expiresIn) &&
        (identical(other.scope, scope) || other.scope == scope);
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
    Object accessToken = immutable,
    Object tokenType = immutable,
    Object refreshToken = immutable,
    Object expiresIn = immutable,
    Object scope = immutable,
  }) {
    return _$_TokenResponse(
      accessToken == immutable ? this.accessToken : accessToken as String,
      tokenType == immutable ? this.tokenType : tokenType as String,
      refreshToken == immutable ? this.refreshToken : refreshToken as String,
      expiresIn == immutable ? this.expiresIn : expiresIn as int,
      scope == immutable ? this.scope : scope as String,
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
