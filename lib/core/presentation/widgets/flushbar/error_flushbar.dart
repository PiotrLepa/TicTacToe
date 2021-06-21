import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/app_flushbar.dart';

// ignore: must_be_immutable
class ErrorFlushbar extends AppFlushbar {
  ErrorFlushbar({
    Key? key,
    required BuildContext context,
    required PlainLocalizedString message,
    required VoidCallback onDismiss,
    PlainLocalizedString? title,
  }) : super(
          key: key,
          context: context,
          title: title ?? Strings.errorFlushbarTitle,
          message: message,
          backgroundColor: Theme.of(context).errorColor,
          icon: const Icon(
            Icons.warning,
            color: Colors.white,
          ),
          onDismiss: onDismiss,
        );
}
