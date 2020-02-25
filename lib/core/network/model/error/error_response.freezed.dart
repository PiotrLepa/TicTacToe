// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const

part of error_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

mixin _$ErrorResponse {
  int get code;
  String get exception;
  String get message;

  ErrorResponse copyWith({int code, String exception, String message});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  const _$_ErrorResponse(this.code, this.exception, this.message)
      : assert(code != null),
        assert(exception != null),
        assert(message != null);

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResponseFromJson(json);

  @override
  final int code;
  @override
  final String exception;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorResponse(code: $code, exception: $exception, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(exception) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$_ErrorResponse copyWith({
    Object code = freezed,
    Object exception = freezed,
    Object message = freezed,
  }) {
    return _$_ErrorResponse(
      code == freezed ? this.code : code as int,
      exception == freezed ? this.exception : exception as String,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(int code, String exception, String message) =
      _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  int get code;
  @override
  String get exception;
  @override
  String get message;

  @override
  _ErrorResponse copyWith({int code, String exception, String message});
}
