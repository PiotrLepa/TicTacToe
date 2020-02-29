// GENERATED CODE - DO NOT MODIFY BY HAND

part of refresh_token_request;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefreshTokenRequest _$_$_RefreshTokenRequestFromJson(
    Map<String, dynamic> json) {
  return _$_RefreshTokenRequest(
    refreshToken: json['refresh_token'] as String,
    grantType: json['grant_type'] as String,
  );
}

Map<String, dynamic> _$_$_RefreshTokenRequestToJson(
        _$_RefreshTokenRequest instance) =>
    <String, dynamic>{
      'refresh_token': instance.refreshToken,
      'grant_type': instance.grantType,
    };
