// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_request;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$_$_LoginRequestFromJson(Map<String, dynamic> json) {
  return _$_LoginRequest(
    email: json['username'] as String,
    password: json['password'] as String,
    grantType: json['grant_type'] as String,
  );
}

Map<String, dynamic> _$_$_LoginRequestToJson(_$_LoginRequest instance) =>
    <String, dynamic>{
      'username': instance.email,
      'password': instance.password,
      'grant_type': instance.grantType,
    };
