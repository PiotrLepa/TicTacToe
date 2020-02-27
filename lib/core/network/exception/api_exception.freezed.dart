// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const

part of api_exception;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ApiException {
  int get code;
  @nullable
  String get printableMessage;

  ApiException copyWith({int code, @nullable String printableMessage});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required
        Result internalServerError(int code, @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  });
}

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection(this.code, @nullable this.printableMessage)
      : assert(code != null);

  @override
  final int code;
  @override
  @nullable
  final String printableMessage;

  @override
  String toString() {
    return 'ApiException.noConnection(code: $code, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoConnection &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_NoConnection copyWith({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_NoConnection(
      code == freezed ? this.code : code as int,
      printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required
        Result internalServerError(int code, @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return noConnection(code, printableMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noConnection != null) {
      return noConnection(code, printableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements ApiException {
  const factory _NoConnection(int code, @nullable String printableMessage) =
      _$_NoConnection;

  @override
  int get code;
  @override
  @nullable
  String get printableMessage;

  @override
  _NoConnection copyWith({int code, @nullable String printableMessage});
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest(this.code, @nullable this.printableMessage)
      : assert(code != null);

  @override
  final int code;
  @override
  @nullable
  final String printableMessage;

  @override
  String toString() {
    return 'ApiException.badRequest(code: $code, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadRequest &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_BadRequest copyWith({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_BadRequest(
      code == freezed ? this.code : code as int,
      printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required
        Result internalServerError(int code, @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return badRequest(code, printableMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(code, printableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements ApiException {
  const factory _BadRequest(int code, @nullable String printableMessage) =
      _$_BadRequest;

  @override
  int get code;
  @override
  @nullable
  String get printableMessage;

  @override
  _BadRequest copyWith({int code, @nullable String printableMessage});
}

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized(this.code, @nullable this.printableMessage)
      : assert(code != null);

  @override
  final int code;
  @override
  @nullable
  final String printableMessage;

  @override
  String toString() {
    return 'ApiException.unauthorized(code: $code, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unauthorized &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_Unauthorized copyWith({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_Unauthorized(
      code == freezed ? this.code : code as int,
      printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required Result internalServerError(int code,
        @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return unauthorized(code, printableMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(code, printableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements ApiException {
  const factory _Unauthorized(int code, @nullable String printableMessage) =
  _$_Unauthorized;

  @override
  int get code;
  @override
  @nullable
  String get printableMessage;

  @override
  _Unauthorized copyWith({int code, @nullable String printableMessage});
}

class _$_NotFound implements _NotFound {
  const _$_NotFound(this.code, @nullable this.printableMessage)
      : assert(code != null);

  @override
  final int code;
  @override
  @nullable
  final String printableMessage;

  @override
  String toString() {
    return 'ApiException.notFound(code: $code, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotFound &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_NotFound copyWith({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_NotFound(
      code == freezed ? this.code : code as int,
      printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required Result internalServerError(int code,
        @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return notFound(code, printableMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(code, printableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements ApiException {
  const factory _NotFound(int code, @nullable String printableMessage) =
  _$_NotFound;

  @override
  int get code;
  @override
  @nullable
  String get printableMessage;

  @override
  _NotFound copyWith({int code, @nullable String printableMessage});
}

class _$_InternalServerError implements _InternalServerError {
  const _$_InternalServerError(this.code, @nullable this.printableMessage)
      : assert(code != null);

  @override
  final int code;
  @override
  @nullable
  final String printableMessage;

  @override
  String toString() {
    return 'ApiException.internalServerError(code: $code, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InternalServerError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_InternalServerError copyWith({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_InternalServerError(
      code == freezed ? this.code : code as int,
      printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required Result internalServerError(int code,
        @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return internalServerError(code, printableMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError(code, printableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class _InternalServerError implements ApiException {
  const factory _InternalServerError(int code,
      @nullable String printableMessage) = _$_InternalServerError;

  @override
  int get code;

  @override
  @nullable
  String get printableMessage;

  @override
  _InternalServerError copyWith({int code, @nullable String printableMessage});
}

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.code, @nullable this.printableMessage)
      : assert(code != null);

  @override
  final int code;
  @override
  @nullable
  final String printableMessage;

  @override
  String toString() {
    return 'ApiException.unknownError(code: $code, printableMessage: $printableMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.printableMessage, printableMessage) ||
                const DeepCollectionEquality()
                    .equals(other.printableMessage, printableMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(printableMessage);

  @override
  _$_UnknownError copyWith({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _$_UnknownError(
      code == freezed ? this.code : code as int,
      printableMessage == freezed
          ? this.printableMessage
          : printableMessage as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, @nullable String printableMessage),
    @required Result badRequest(int code, @nullable String printableMessage),
    @required Result unauthorized(int code, @nullable String printableMessage),
    @required Result notFound(int code, @nullable String printableMessage),
    @required Result internalServerError(int code,
        @nullable String printableMessage),
    @required Result unknownError(int code, @nullable String printableMessage),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return unknownError(code, printableMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, @nullable String printableMessage),
    Result badRequest(int code, @nullable String printableMessage),
    Result unauthorized(int code, @nullable String printableMessage),
    Result notFound(int code, @nullable String printableMessage),
    Result internalServerError(int code, @nullable String printableMessage),
    Result unknownError(int code, @nullable String printableMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(code, printableMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noConnection(_NoConnection value),
    @required Result badRequest(_BadRequest value),
    @required Result unauthorized(_Unauthorized value),
    @required Result notFound(_NotFound value),
    @required Result internalServerError(_InternalServerError value),
    @required Result unknownError(_UnknownError value),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noConnection(_NoConnection value),
    Result badRequest(_BadRequest value),
    Result unauthorized(_Unauthorized value),
    Result notFound(_NotFound value),
    Result internalServerError(_InternalServerError value),
    Result unknownError(_UnknownError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class _UnknownError implements ApiException {
  const factory _UnknownError(int code, @nullable String printableMessage) =
  _$_UnknownError;

  @override
  int get code;
  @override
  @nullable
  String get printableMessage;

  @override
  _UnknownError copyWith({int code, @nullable String printableMessage});
}
