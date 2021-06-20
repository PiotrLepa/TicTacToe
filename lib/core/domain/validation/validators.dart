import 'package:auto_localized/auto_localized.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';

@lazySingleton
class Validator {
  static final emailRegex = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

  PlainLocalizedString? validateUsername(String value) {
    if (value.isEmpty) {
      return Strings.emptyFieldError;
    } else if (value.length < 3) {
      return Strings.usernameTooShortError;
    } else {
      return null;
    }
  }

  PlainLocalizedString? validateEmail(String value) {
    if (value.isEmpty) {
      return Strings.emptyFieldError;
    } else if (!emailRegex.hasMatch(value)) {
      return Strings.invalidEmailError;
    } else {
      return null;
    }
  }

  PlainLocalizedString? validatePassword(String value) {
    if (value.isEmpty) {
      return Strings.emptyFieldError;
    } else if (value.length < 6) {
      return Strings.passwordTooShortError;
    } else {
      return null;
    }
  }

  PlainLocalizedString? validateOpponentCode(String value) {
    if (value.isEmpty) {
      return Strings.emptyFieldError;
    } else if (value.length != 8) {
      return Strings.opponentCodeLengthError;
    } else {
      return null;
    }
  }
}
