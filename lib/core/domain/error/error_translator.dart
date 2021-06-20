import 'package:auto_localized/auto_localized.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/exception/api/api_exception.dart';
import 'package:tictactoe/core/extension/string_extension.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';

@lazySingleton
class ErrorTranslator {
  PlainLocalizedString translate(Exception exception) {
    if (exception is ApiException) {
      if (exception.printableMessage != null) {
        return exception.printableMessage!.toLocalized();
      }
      return exception.map(
        noConnection: (_) => Strings.apiErrorNoConnection,
        timeout: (_) => Strings.apiErrorTimeout,
        badRequest: (_) => Strings.apiErrorBadRequest,
        unauthorized: (_) => Strings.apiErrorUnauthorized,
        internalServerError: (_) => Strings.apiErrorInternalServerError,
        unknownError: (_) => Strings.apiErrorUnknown,
      );
    } else {
      return Strings.apiErrorUnknown;
    }
  }
}
