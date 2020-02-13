class ApiException implements Exception {
  final int code;
  final String message;
  final String exception;

  ApiException(this.code, this.message, this.exception);

  @override
  String toString() =>
      'ApiException{code: $code, message: $message, exception: $exception}';
}

class NoConnectionException extends ApiException {
  NoConnectionException(int code, String message, String exception)
      : super(code, message, exception);
}

class DefaultException extends ApiException {
  DefaultException(int code, String message, String exception)
      : super(code, message, exception);
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(int code, String message, String exception)
      : super(code, message, exception);
}

class NotFoundException extends ApiException {
  NotFoundException(int code, String message, String exception)
      : super(code, message, exception);
}

class InternalServerException extends ApiException {
  InternalServerException(int code, String message, String exception)
      : super(code, message, exception);
}

class UnknownErrorException extends ApiException {
  UnknownErrorException(int code, String message, String exception)
      : super(code, message, exception);
}
