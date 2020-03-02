import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/exception/api_exception.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';

@injectable
@lazySingleton
class ErrorTranslator {
  RawKeyString translate(ApiException exception) {
    if (exception.printableMessage != null) {
      return RawString(exception.printableMessage);
    }
    final keyString = exception.map(
      noConnection: (value) => "apiErrorNoConnection",
      badRequest: (value) => "apiErrorBadRequest",
      unauthorized: (value) => "apiErrorUnauthorized",
      notFound: (value) => "apiErrorNotFound",
      internalServerError: (value) => "apiErrorInternalServerError",
      unknownError: (value) => "apiErrorUnknown",
    );
    return KeyString(keyString);
  }
}
