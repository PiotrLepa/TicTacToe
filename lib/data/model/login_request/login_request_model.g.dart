// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_request_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequestModel _$_$_LoginRequestModelFromJson(Map<String, dynamic> json) {
  return _$_LoginRequestModel(
    email: json['username'] as String,
    password: json['password'] as String,
    grantType: json['grant_type'] as String,
  );
}

Map<String, dynamic> _$_$_LoginRequestModelToJson(
        _$_LoginRequestModel instance) =>
    <String, dynamic>{
      'username': instance.email,
      'password': instance.password,
      'grant_type': instance.grantType,
    };
