import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/app_flushbar.dart';

// ignore: must_be_immutable
class ErrorFlushbar extends AppFlushbar {
  ErrorFlushbar({
    Key key,
    @required BuildContext context,
    @required RawKeyString message,
    @required VoidCallback onDismiss,
    RawKeyString title,
  }) : super(
          title: title ?? AppLocalizations.of(context).errorFlushbarTitle,
          message: AppLocalizations.of(context).get(message),
          backgroundColor: Theme.of(context).errorColor,
          icon: Icon(
            Icons.warning,
            color: Colors.white,
          ),
          onDismiss: onDismiss,
        );
}
