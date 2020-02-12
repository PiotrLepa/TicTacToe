// GENERATED CODE - DO NOT MODIFY BY HAND

part of network_token;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResponse _$_$_TokenResponseFromJson(Map<String, dynamic> json) {
  return _$_TokenResponse(
    json['access_token'] as String,
    json['token_type'] as String,
    json['refresh_token'] as String,
    json['expires_in'] as int,
    json['scope'] as String,
  );
}

Map<String, dynamic> _$_$_TokenResponseToJson(_$_TokenResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
      'expires_in': instance.expiresIn,
      'scope': instance.scope,
    };
