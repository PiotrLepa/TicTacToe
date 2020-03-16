import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';

@lazySingleton
class ErrorHandler {
  FlushbarStatus _flushbarStatus;

  void showError(BuildContext context, RawKeyString message) async {
    if (_flushbarStatus != null &&
        _flushbarStatus != FlushbarStatus.DISMISSED) {
      return;
    }
    Flushbar(
      title: "Wystąpił błąd",
      message: AppLocalizations.of(context).get(message),
      backgroundColor: Theme.of(context).errorColor,
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: EdgeInsets.all(8),
      borderRadius: 16,
      duration: Duration(seconds: 3),
      boxShadows: [
        BoxShadow(
          color: Color(0x44FFFFFF),
          offset: Offset(0, 3),
          blurRadius: 4,
        )
      ],
      onStatusChanged: (status) {
        _flushbarStatus = status;
      },
    )..show(context);
  }
}
