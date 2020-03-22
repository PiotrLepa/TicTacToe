import 'package:tictactoe/core/common/raw_key_string.dart';

class Validators {
  static RawKeyString validateEmail(String value) {
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
