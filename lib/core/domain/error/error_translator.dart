import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/data/network/exception/api/api_exception.dart';

@lazySingleton
class ErrorTranslator {
  RawKeyString translate(ApiException exception) {
    if (exception.printableMessage != null) {
      return RawString(exception.printableMessage!);
    }
    final keyString = exception.map(
      noConnection: (mappedState) => 'apiErrorNoConnection',
      timeout: (mappedState) => 'apiErrorTimeout',
      badRequest: (mappedState) => 'apiErrorBadRequest',
      unauthorized: (mappedState) => 'apiErrorUnauthorized',
      internalServerError: (mappedState) => 'apiErrorInternalServerError',
      unknownError: (mappedState) => 'apiErrorUnknown',
    );
    return KeyString(keyString);
  }
}
