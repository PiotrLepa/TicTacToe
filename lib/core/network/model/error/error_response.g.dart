// GENERATED CODE - DO NOT MODIFY BY HAND

part of error_response;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorResponse _$_$_ErrorResponseFromJson(Map<String, dynamic> json) {
  return _$_ErrorResponse(
    json['code'] as int,
    json['exception'] as String,
    json['message'] as String,
  );
}

Map<String, dynamic> _$_$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'exception': instance.exception,
      'message': instance.message,
    };
