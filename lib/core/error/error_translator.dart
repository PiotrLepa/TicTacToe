import 'package:tictactoe/core/network/exception/api_exception.dart';
import 'package:tictactoe/raw_key_string.dart';

class ErrorTranslator {
  RawKeyString translate(ApiException exception) {
    if (exception.printableMessage != null) {
      return RawString(exception.printableMessage);
    }
    final keyString = exception.map(
      noConnection: (value) => "api_error_no_connection",
      badRequest: (value) => "api_error_bad_request",
      unauthorized: (value) => "api_error_unauthorized",
      notFound: (value) => "api_error_not_found",
      internalServerError: (value) => "api_error_internal_server_error",
      unknownError: (value) => "api_error_unknown",
    );
    return KeyString(keyString);
  }
}
