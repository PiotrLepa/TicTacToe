// GENERATED CODE - DO NOT MODIFY BY HAND

part of refresh_token_request_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshTokenRequestModel _$_$_RefreshTokenRequestModelFromJson(
    Map<String, dynamic> json) {
  return _$_RefreshTokenRequestModel(
    refreshToken: json['refresh_token'] as String,
    grantType: json['grant_type'] as String,
  );
}

Map<String, dynamic> _$_$_RefreshTokenRequestModelToJson(
        _$_RefreshTokenRequestModel instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'grant_type': instance.grantType,
    };
