import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/app_flushbar.dart';

// ignore: must_be_immutable
class SuccessFlushbar extends AppFlushbar {
  SuccessFlushbar({
    Key? key,
    required BuildContext context,
    required PlainLocalizedString message,
    required VoidCallback onDismiss,
    PlainLocalizedString? title,
  }) : super(
          key: key,
          context: context,
          title: title ?? Strings.successFlushbarTitle,
          message: message,
          backgroundColor: ThemeProvider.of(context).accentColor,
          onDismiss: onDismiss,
        );
}
