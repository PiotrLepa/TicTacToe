// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of error_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

mixin _$ErrorResponse {
  int get code;
  String get developerMessage;
  String get printableMessage;

  ErrorResponse copyWith(
      {int code, String developerMessage, String printableMessage});

  Map<String, dynamic> toJson();
}

class _$ErrorResponseTearOff {
  const _$ErrorResponseTearOff();

  _ErrorResponse call(
      {@required int code,
      @required String developerMessage,
      String printableMessage}) {
    return _ErrorResponse(
      code: code,
      developerMessage: developerMessage,
      printableMessage: printableMessage,
    );
  }
}

const $ErrorResponse = _$ErrorResponseTearOff();

@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  const _$_ErrorResponse(
      {@required this.code,
      @required this.developerMessage,
      this.printableMessage})
      : assert(code != null),
        assert(developerMessage != null);

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResponseFromJson(json);

  @override
  final int code;
  @override
  final String developerMessage;
  @override
  final String printableMessage;

  @override
  String toString() {
    return 'ErrorResponse(code: $code, developerMessage: $developerMessage, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.developerMessage, developerMessage) ||
                const DeepCollectionEquality()
                    .equals(other.developerMessage, developerMessage)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(developerMessage) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_ErrorResponse copyWith({
    Object code = freezed,
    Object developerMessage = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_ErrorResponse(
      code: code == freezed ? this.code : code as int,
      developerMessage: developerMessage == freezed
          ? this.developerMessage
          : developerMessage as String,
      printableMessage: printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(
      {@required int code,
      @required String developerMessage,
      String printableMessage}) = _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  int get code;
  @override
  String get developerMessage;
  @override
  String get printableMessage;

  @override
  _ErrorResponse copyWith(
      {int code, String developerMessage, String printableMessage});
}
