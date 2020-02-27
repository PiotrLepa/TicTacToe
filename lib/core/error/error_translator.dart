import 'package:tictactoe/core/network/exception/api_exception.dart';

class ErrorTranslator {
  // TODO internationalize
  String translate(ApiException exception) {
    if (exception.printableMessage != null) {
      return exception.printableMessage;
    }
    return exception.map(
      noConnection: (value) => "No internet connection",
      badRequest: (value) => "Error occured",
      unauthorized: (value) => "Lack of access",
      notFound: (value) => "Not found",
      internalServerError: (value) => "Internal server error",
      unknownError: (value) => "Unknown error",
    );
  }
}
