// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/app_flushbar.dart';

// ignore: must_be_immutable
class SuccessFlushbar extends AppFlushbar {
  SuccessFlushbar({
    Key key,
    @required BuildContext context,
    @required String message,
    @required VoidCallback onDismiss,
    String title,
  }) : super(
    title: title ?? AppLocalizations.of(context).successFlushbarTitle,
          message: message,
          backgroundColor: Theme.of(context).primaryColor,
          onDismiss: onDismiss,
        );
}
