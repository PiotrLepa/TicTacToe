// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of api_exception;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ApiException {
  int get code;
  String get message;

  ApiException copyWith({int code, String message});

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
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
  const _$_NoConnection(this.code, this.message)
      : assert(code != null),
        assert(message != null);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.noConnection(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoConnection &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  _$_NoConnection copyWith({
    Object code = freezed,
    Object message = freezed,
  }) {
    assert(code != null);
    assert(message != null);
    return _$_NoConnection(
      code == freezed ? this.code : code as int,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return noConnection(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noConnection != null) {
      return noConnection(code, message);
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
  const factory _NoConnection(int code, String message) = _$_NoConnection;

  @override
  int get code;
  @override
  String get message;

  @override
  _NoConnection copyWith({int code, String message});
}

class _$_BadRequest implements _BadRequest {
  const _$_BadRequest(this.code, this.message)
      : assert(code != null),
        assert(message != null);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.badRequest(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BadRequest &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  _$_BadRequest copyWith({
    Object code = freezed,
    Object message = freezed,
  }) {
    assert(code != null);
    assert(message != null);
    return _$_BadRequest(
      code == freezed ? this.code : code as int,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return badRequest(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (badRequest != null) {
      return badRequest(code, message);
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
  const factory _BadRequest(int code, String message) = _$_BadRequest;

  @override
  int get code;
  @override
  String get message;

  @override
  _BadRequest copyWith({int code, String message});
}

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized(this.code, this.message)
      : assert(code != null),
        assert(message != null);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.unauthorized(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unauthorized &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  _$_Unauthorized copyWith({
    Object code = freezed,
    Object message = freezed,
  }) {
    assert(code != null);
    assert(message != null);
    return _$_Unauthorized(
      code == freezed ? this.code : code as int,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return unauthorized(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(code, message);
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
  const factory _Unauthorized(int code, String message) = _$_Unauthorized;

  @override
  int get code;
  @override
  String get message;

  @override
  _Unauthorized copyWith({int code, String message});
}

class _$_NotFound implements _NotFound {
  const _$_NotFound(this.code, this.message)
      : assert(code != null),
        assert(message != null);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.notFound(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotFound &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  _$_NotFound copyWith({
    Object code = freezed,
    Object message = freezed,
  }) {
    assert(code != null);
    assert(message != null);
    return _$_NotFound(
      code == freezed ? this.code : code as int,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return notFound(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFound != null) {
      return notFound(code, message);
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
  const factory _NotFound(int code, String message) = _$_NotFound;

  @override
  int get code;
  @override
  String get message;

  @override
  _NotFound copyWith({int code, String message});
}

class _$_InternalServerError implements _InternalServerError {
  const _$_InternalServerError(this.code, this.message)
      : assert(code != null),
        assert(message != null);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.internalServerError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InternalServerError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  _$_InternalServerError copyWith({
    Object code = freezed,
    Object message = freezed,
  }) {
    assert(code != null);
    assert(message != null);
    return _$_InternalServerError(
      code == freezed ? this.code : code as int,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return internalServerError(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (internalServerError != null) {
      return internalServerError(code, message);
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
  const factory _InternalServerError(int code, String message) =
      _$_InternalServerError;

  @override
  int get code;
  @override
  String get message;

  @override
  _InternalServerError copyWith({int code, String message});
}

class _$_UnknownError implements _UnknownError {
  const _$_UnknownError(this.code, this.message)
      : assert(code != null),
        assert(message != null);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.unknownError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownError &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ code.hashCode ^ message.hashCode;

  @override
  _$_UnknownError copyWith({
    Object code = freezed,
    Object message = freezed,
  }) {
    assert(code != null);
    assert(message != null);
    return _$_UnknownError(
      code == freezed ? this.code : code as int,
      message == freezed ? this.message : message as String,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noConnection(int code, String message),
    @required Result badRequest(int code, String message),
    @required Result unauthorized(int code, String message),
    @required Result notFound(int code, String message),
    @required Result internalServerError(int code, String message),
    @required Result unknownError(int code, String message),
  }) {
    assert(noConnection != null);
    assert(badRequest != null);
    assert(unauthorized != null);
    assert(notFound != null);
    assert(internalServerError != null);
    assert(unknownError != null);
    return unknownError(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noConnection(int code, String message),
    Result badRequest(int code, String message),
    Result unauthorized(int code, String message),
    Result notFound(int code, String message),
    Result internalServerError(int code, String message),
    Result unknownError(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknownError != null) {
      return unknownError(code, message);
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
  const factory _UnknownError(int code, String message) = _$_UnknownError;

  @override
  int get code;
  @override
  String get message;

  @override
  _UnknownError copyWith({int code, String message});
}
