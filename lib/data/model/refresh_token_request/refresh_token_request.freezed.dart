// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of refresh_token_request;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

mixin _$RefreshTokenRequest {
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  @JsonKey(name: 'grant_type')
  String get grantType;

  RefreshTokenRequest copyWith(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});

  Map<String, dynamic> toJson();
}

class _$RefreshTokenRequestTearOff {
  const _$RefreshTokenRequestTearOff();

  _RefreshTokenRequest call(
      {@required @JsonKey(name: 'refresh_token') String refreshToken,
      @required @JsonKey(name: 'grant_type') String grantType}) {
    return _RefreshTokenRequest(
      refreshToken: refreshToken,
      grantType: grantType,
    );
  }
}

const $RefreshTokenRequest = _$RefreshTokenRequestTearOff();

@JsonSerializable()
class _$_RefreshTokenRequest implements _RefreshTokenRequest {
  const _$_RefreshTokenRequest(
      {@required @JsonKey(name: 'refresh_token') this.refreshToken,
      @required @JsonKey(name: 'grant_type') this.grantType})
      : assert(refreshToken != null),
        assert(grantType != null);

  factory _$_RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_RefreshTokenRequestFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'grant_type')
  final String grantType;

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken, grantType: $grantType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshTokenRequest &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(grantType);

  @override
  _$_RefreshTokenRequest copyWith({
    Object refreshToken = freezed,
    Object grantType = freezed,
  }) {
    return _$_RefreshTokenRequest(
      refreshToken:
          refreshToken == freezed ? this.refreshToken : refreshToken as String,
      grantType: grantType == freezed ? this.grantType : grantType as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RefreshTokenRequestToJson(this);
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest(
          {@required @JsonKey(name: 'refresh_token') String refreshToken,
          @required @JsonKey(name: 'grant_type') String grantType}) =
      _$_RefreshTokenRequest;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequest.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  @override
  @JsonKey(name: 'grant_type')
  String get grantType;

  @override
  _RefreshTokenRequest copyWith(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});
}
