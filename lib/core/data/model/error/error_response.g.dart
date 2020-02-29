// GENERATED CODE - DO NOT MODIFY BY HAND

part of error_response;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponse _$_$_ErrorResponseFromJson(Map<String, dynamic> json) {
  return _$_ErrorResponse(
    code: json['code'] as int,
    developerMessage: json['developerMessage'] as String,
    printableMessage: json['printableMessage'] as String,
  );
}

Map<String, dynamic> _$_$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'developerMessage': instance.developerMessage,
      'printableMessage': instance.printableMessage,
    };
