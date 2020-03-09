// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of refresh_token_request_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

RefreshTokenRequestModel _$RefreshTokenRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RefreshTokenRequestModel.fromJson(json);
}

mixin _$RefreshTokenRequestModel {
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @JsonKey(name: 'grant_type')
  String get grantType;

  RefreshTokenRequestModel copyWith(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});

  Map<String, dynamic> toJson();
}

class _$RefreshTokenRequestModelTearOff {
  const _$RefreshTokenRequestModelTearOff();

  _RefreshTokenRequestModel call(
      {@required @JsonKey(name: 'refresh_token') String refreshToken,
      @required @JsonKey(name: 'grant_type') String grantType}) {
    return _RefreshTokenRequestModel(
      refreshToken: refreshToken,
      grantType: grantType,
    );
  }
}

const $RefreshTokenRequestModel = _$RefreshTokenRequestModelTearOff();

@JsonSerializable()
class _$_RefreshTokenRequestModel implements _RefreshTokenRequestModel {
  const _$_RefreshTokenRequestModel(
      {@required @JsonKey(name: 'refresh_token') this.refreshToken,
      @required @JsonKey(name: 'grant_type') this.grantType})
      : assert(refreshToken != null),
        assert(grantType != null);

  factory _$_RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RefreshTokenRequestModelFromJson(json);

  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'grant_type')
  final String grantType;

  @override
  String toString() {
    return 'RefreshTokenRequestModel(refreshToken: $refreshToken, grantType: $grantType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RefreshTokenRequestModel &&
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
  _$_RefreshTokenRequestModel copyWith({
    Object refreshToken = freezed,
    Object grantType = freezed,
  }) {
    return _$_RefreshTokenRequestModel(
      refreshToken:
          refreshToken == freezed ? this.refreshToken : refreshToken as String,
      grantType: grantType == freezed ? this.grantType : grantType as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RefreshTokenRequestModelToJson(this);
  }
}

abstract class _RefreshTokenRequestModel implements RefreshTokenRequestModel {
  const factory _RefreshTokenRequestModel(
          {@required @JsonKey(name: 'refresh_token') String refreshToken,
          @required @JsonKey(name: 'grant_type') String grantType}) =
      _$_RefreshTokenRequestModel;

  factory _RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) =
      _$_RefreshTokenRequestModel.fromJson;

  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'grant_type')
  String get grantType;

  @override
  _RefreshTokenRequestModel copyWith(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});
}
