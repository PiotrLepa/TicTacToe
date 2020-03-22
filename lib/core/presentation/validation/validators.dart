import 'package:tictactoe/core/common/raw_key_string.dart';

class Validators {
//  String validate(BuildContext context, String value);

  static RawKeyString validateUsername(String value) {
    if (value.isEmpty) {
      return KeyString('emptyFieldError');
    } else {
      return null;
    }
  }

  static RawKeyString validatePassword(String value) {
    if (value.isEmpty) {
      return KeyString('emptyFieldError');
    } else {
      return null;
    }
  }
}

//class UsernameValidator implements Validator {
//  @override
//  String validate(BuildContext context, String value) {
//    if (value.isEmpty) {
//      return AppLocalizations.of(context).emptyFieldError;
//    } else {
//      return null;
//    }
//  }
//}
//
//class PasswordValidator implements Validator {
//  @override
//  String validate(BuildContext context, String value) {
//    if (value.isEmpty) {
//      return AppLocalizations.of(context).emptyFieldError;
//    } else {
//      return null;
//    }
//  }
//}
