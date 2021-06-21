import 'package:another_flushbar/flushbar.dart';
import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';

// ignore: must_be_immutable
class AppFlushbar extends Flushbar<void> {
  AppFlushbar({
    Key? key,
    required BuildContext context,
    required PlainLocalizedString title,
    required PlainLocalizedString message,
    required VoidCallback onDismiss,
    Color? backgroundColor,
    Widget? icon,
    TextButton? mainButton,
    FlushbarPosition flushbarPosition = FlushbarPosition.BOTTOM,
    Duration? duration = const Duration(seconds: 3),
    bool isDismissible = true,
    List<BoxShadow>? boxShadows,
  }) : super(
          key: key,
          titleText: Text(
            context.translate(title),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: ThemeProvider.of(context).textColorInverted,
            ),
          ),
          messageText: Text(
            message.get(context),
            style: TextStyle(
              fontSize: 14,
              color: ThemeProvider.of(context).textColorInverted,
            ),
          ),
          isDismissible: isDismissible,
          icon: icon,
          shouldIconPulse: false,
          backgroundColor: backgroundColor ?? const Color(0xFF303030),
          mainButton: mainButton,
          flushbarStyle: FlushbarStyle.FLOATING,
          margin: const EdgeInsets.all(8),
          borderRadius: BorderRadius.circular(16),
          duration: duration,
          flushbarPosition: flushbarPosition,
          boxShadows: boxShadows ??
              [
                const BoxShadow(
                  color: Color(0x44FFFFFF),
                  offset: Offset(0, 3),
                  blurRadius: 4,
                )
              ],
          onStatusChanged: (status) {
            if (status == FlushbarStatus.DISMISSED) onDismiss();
          },
        );
}
