// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of refresh_token_request_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

RefreshTokenRequestModel _$RefreshTokenRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RefreshTokenRequestModel.fromJson(json);
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

// ignore: unused_element
const $RefreshTokenRequestModel = _$RefreshTokenRequestModelTearOff();

mixin _$RefreshTokenRequestModel {
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  @JsonKey(name: 'grant_type')
  String get grantType;

  Map<String, dynamic> toJson();

  $RefreshTokenRequestModelCopyWith<RefreshTokenRequestModel> get copyWith;
}

abstract class $RefreshTokenRequestModelCopyWith<$Res> {
  factory $RefreshTokenRequestModelCopyWith(RefreshTokenRequestModel value,
          $Res Function(RefreshTokenRequestModel) then) =
      _$RefreshTokenRequestModelCopyWithImpl<$Res>;

  $Res call(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});
}

class _$RefreshTokenRequestModelCopyWithImpl<$Res>
    implements $RefreshTokenRequestModelCopyWith<$Res> {
  _$RefreshTokenRequestModelCopyWithImpl(this._value, this._then);

  final RefreshTokenRequestModel _value;

  // ignore: unused_field
  final $Res Function(RefreshTokenRequestModel) _then;

  @override
  $Res call({
    Object refreshToken = freezed,
    Object grantType = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
      grantType: grantType == freezed ? _value.grantType : grantType as String,
    ));
  }
}

abstract class _$RefreshTokenRequestModelCopyWith<$Res>
    implements $RefreshTokenRequestModelCopyWith<$Res> {
  factory _$RefreshTokenRequestModelCopyWith(_RefreshTokenRequestModel value,
          $Res Function(_RefreshTokenRequestModel) then) =
      __$RefreshTokenRequestModelCopyWithImpl<$Res>;

  @override
  $Res call(
      {@JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'grant_type') String grantType});
}

class __$RefreshTokenRequestModelCopyWithImpl<$Res>
    extends _$RefreshTokenRequestModelCopyWithImpl<$Res>
    implements _$RefreshTokenRequestModelCopyWith<$Res> {
  __$RefreshTokenRequestModelCopyWithImpl(_RefreshTokenRequestModel _value,
      $Res Function(_RefreshTokenRequestModel) _then)
      : super(_value, (v) => _then(v as _RefreshTokenRequestModel));

  @override
  _RefreshTokenRequestModel get _value =>
      super._value as _RefreshTokenRequestModel;

  @override
  $Res call({
    Object refreshToken = freezed,
    Object grantType = freezed,
  }) {
    return _then(_RefreshTokenRequestModel(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
      grantType: grantType == freezed ? _value.grantType : grantType as String,
    ));
  }
}

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
  _$RefreshTokenRequestModelCopyWith<_RefreshTokenRequestModel> get copyWith =>
      __$RefreshTokenRequestModelCopyWithImpl<_RefreshTokenRequestModel>(
          this, _$identity);

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
  _$RefreshTokenRequestModelCopyWith<_RefreshTokenRequestModel> get copyWith;
}
