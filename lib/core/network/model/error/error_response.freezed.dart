// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of error_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

abstract class _$ErrorResponse {
  String get code;
  String get exception;
  String get message;

  ErrorResponse copyWith({String code, String exception, String message});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_ErrorResponse with DiagnosticableTreeMixin implements _ErrorResponse {
  const _$_ErrorResponse(this.code, this.exception, this.message);

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResponseFromJson(json);

  @override
  final String code;
  @override
  final String exception;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'ErrorResponse(code: $code, exception: $exception, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ErrorResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('exception', exception))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return other is _ErrorResponse &&
        (identical(other.code, code) || other.code == code) &&
        (identical(other.exception, exception) ||
            other.exception == exception) &&
        (identical(other.message, message) || other.message == message);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      code.hashCode ^
      exception.hashCode ^
      message.hashCode;

  @override
  _$_ErrorResponse copyWith({
    Object code = immutable,
    Object exception = immutable,
    Object message = immutable,
  }) {
    return _$_ErrorResponse(
      code == immutable ? this.code : code as String,
      exception == immutable ? this.exception : exception as String,
      message == immutable ? this.message : message as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(String code, String exception, String message) =
      _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  String get code;
  @override
  String get exception;
  @override
  String get message;

  @override
  _ErrorResponse copyWith({String code, String exception, String message});
}
