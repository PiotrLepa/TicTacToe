// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of api_exception;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ApiExceptionTearOff {
  const _$ApiExceptionTearOff();

  _NoConnection noConnection(int code, @nullable String printableMessage) {
    return _NoConnection(
      code,
      printableMessage,
    );
  }

  _BadRequest badRequest(int code, @nullable String printableMessage) {
    return _BadRequest(
      code,
      printableMessage,
    );
  }

  _Unauthorized unauthorized(int code, @nullable String printableMessage) {
    return _Unauthorized(
      code,
      printableMessage,
    );
  }

  _NotFound notFound(int code, @nullable String printableMessage) {
    return _NotFound(
      code,
      printableMessage,
    );
  }

  _InternalServerError internalServerError(
      int code, @nullable String printableMessage) {
    return _InternalServerError(
      code,
      printableMessage,
    );
  }

  _UnknownError unknownError(int code, @nullable String printableMessage) {
    return _UnknownError(
      code,
      printableMessage,
    );
  }
}

// ignore: unused_element
const $ApiException = _$ApiExceptionTearOff();

mixin _$ApiException {
  int get code;

  @nullable
  String get printableMessage;

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

  $ApiExceptionCopyWith<ApiException> get copyWith;
}

abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(ApiException value,
      $Res Function(ApiException) then) =
  _$ApiExceptionCopyWithImpl<$Res>;

  $Res call({int code, @nullable String printableMessage});
}

class _$ApiExceptionCopyWithImpl<$Res> implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  final ApiException _value;

  // ignore: unused_field
  final $Res Function(ApiException) _then;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as int,
      printableMessage: printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
}

abstract class _$NoConnectionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$NoConnectionCopyWith(_NoConnection value,
      $Res Function(_NoConnection) then) =
  __$NoConnectionCopyWithImpl<$Res>;

  @override
  $Res call({int code, @nullable String printableMessage});
}

class __$NoConnectionCopyWithImpl<$Res> extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(_NoConnection _value,
      $Res Function(_NoConnection) _then)
      : super(_value, (v) => _then(v as _NoConnection));

  @override
  _NoConnection get _value => super._value as _NoConnection;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_NoConnection(
      code == freezed ? _value.code : code as int,
      printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
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
  _$NoConnectionCopyWith<_NoConnection> get copyWith =>
      __$NoConnectionCopyWithImpl<_NoConnection>(this, _$identity);

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
  _$NoConnectionCopyWith<_NoConnection> get copyWith;
}

abstract class _$BadRequestCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$BadRequestCopyWith(_BadRequest value,
      $Res Function(_BadRequest) then) =
  __$BadRequestCopyWithImpl<$Res>;

  @override
  $Res call({int code, @nullable String printableMessage});
}

class __$BadRequestCopyWithImpl<$Res> extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(_BadRequest _value,
      $Res Function(_BadRequest) _then)
      : super(_value, (v) => _then(v as _BadRequest));

  @override
  _BadRequest get _value => super._value as _BadRequest;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_BadRequest(
      code == freezed ? _value.code : code as int,
      printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
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
  _$BadRequestCopyWith<_BadRequest> get copyWith =>
      __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);

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
  _$BadRequestCopyWith<_BadRequest> get copyWith;
}

abstract class _$UnauthorizedCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(_Unauthorized value,
      $Res Function(_Unauthorized) then) =
  __$UnauthorizedCopyWithImpl<$Res>;

  @override
  $Res call({int code, @nullable String printableMessage});
}

class __$UnauthorizedCopyWithImpl<$Res> extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(_Unauthorized _value,
      $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_Unauthorized(
      code == freezed ? _value.code : code as int,
      printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
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
  _$UnauthorizedCopyWith<_Unauthorized> get copyWith =>
      __$UnauthorizedCopyWithImpl<_Unauthorized>(this, _$identity);

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
  _$UnauthorizedCopyWith<_Unauthorized> get copyWith;
}

abstract class _$NotFoundCopyWith<$Res> implements $ApiExceptionCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
  __$NotFoundCopyWithImpl<$Res>;

  @override
  $Res call({int code, @nullable String printableMessage});
}

class __$NotFoundCopyWithImpl<$Res> extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_NotFound(
      code == freezed ? _value.code : code as int,
      printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
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
  _$NotFoundCopyWith<_NotFound> get copyWith =>
      __$NotFoundCopyWithImpl<_NotFound>(this, _$identity);

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
  _$NotFoundCopyWith<_NotFound> get copyWith;
}

abstract class _$InternalServerErrorCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$InternalServerErrorCopyWith(_InternalServerError value,
      $Res Function(_InternalServerError) then) =
  __$InternalServerErrorCopyWithImpl<$Res>;

  @override
  $Res call({int code, @nullable String printableMessage});
}

class __$InternalServerErrorCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$InternalServerErrorCopyWith<$Res> {
  __$InternalServerErrorCopyWithImpl(_InternalServerError _value,
      $Res Function(_InternalServerError) _then)
      : super(_value, (v) => _then(v as _InternalServerError));

  @override
  _InternalServerError get _value => super._value as _InternalServerError;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_InternalServerError(
      code == freezed ? _value.code : code as int,
      printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
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
  _$InternalServerErrorCopyWith<_InternalServerError> get copyWith =>
      __$InternalServerErrorCopyWithImpl<_InternalServerError>(
          this, _$identity);

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
  _$InternalServerErrorCopyWith<_InternalServerError> get copyWith;
}

abstract class _$UnknownErrorCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(_UnknownError value,
      $Res Function(_UnknownError) then) =
  __$UnknownErrorCopyWithImpl<$Res>;

  @override
  $Res call({int code, @nullable String printableMessage});
}

class __$UnknownErrorCopyWithImpl<$Res> extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(_UnknownError _value,
      $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;

  @override
  $Res call({
    Object code = freezed,
    Object printableMessage = freezed,
  }) {
    return _then(_UnknownError(
      code == freezed ? _value.code : code as int,
      printableMessage == freezed
          ? _value.printableMessage
          : printableMessage as String,
    ));
  }
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
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

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
  _$UnknownErrorCopyWith<_UnknownError> get copyWith;
}
