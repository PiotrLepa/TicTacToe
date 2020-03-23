import 'package:tictactoe/core/common/raw_key_string.dart';

class Validators {
  static final emailRegex = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");

  static RawKeyString validateEmail(String value) {
    if (value.isEmpty) {
      return KeyString('emptyFieldError');
    } else if (!emailRegex.hasMatch(value)) {
      return KeyString('invalidEmailError');
    } else {
      return null;
    }
  }

  static RawKeyString validatePassword(String value) {
    if (value.isEmpty) {
      return KeyString('emptyFieldError');
    } else if (value.length < 5) {
      return KeyString('passwordTooShortError');
    } else {
      return null;
    }
  }
}
