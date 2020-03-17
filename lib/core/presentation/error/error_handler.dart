import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';

@lazySingleton
class ErrorHandler {
  FlushbarStatus _flushBarStatus;

  void showError(BuildContext context, RawKeyString message) async {
    if (_flushBarStatus != null &&
        _flushBarStatus != FlushbarStatus.DISMISSED) {
      return;
    }
    Flushbar(
      title: AppLocalizations.of(context).errorTitle,
      message: AppLocalizations.of(context).get(message),
      backgroundColor: Theme.of(context).errorColor,
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: EdgeInsets.all(8),
      borderRadius: 16,
      duration: Duration(seconds: 3),
      icon: Icon(
        Icons.warning,
        color: Colors.white,
      ),
      shouldIconPulse: false,
      boxShadows: [
        BoxShadow(
          color: Color(0x44FFFFFF),
          offset: Offset(0, 3),
          blurRadius: 4,
        )
      ],
      onStatusChanged: (status) {
        _flushBarStatus = status;
      },
    )..show(context);
  }
}
