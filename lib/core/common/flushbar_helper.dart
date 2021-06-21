import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/app_flushbar.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/error_flushbar.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/success_flushbar.dart';

@lazySingleton
class FlushbarHelper {
  BuildContext get _context => navigatorKey.currentContext!;

  AppFlushbar? _currentFlushbar;

  Future<void> dismiss() async {
    await _currentFlushbar?.dismiss();
    _currentFlushbar = null;
  }

  Future<void> showError({
    required PlainLocalizedString message,
    PlainLocalizedString? title,
  }) =>
      _showFlushbar(
        flushbar: ErrorFlushbar(
          context: _context,
          title: title,
          message: message,
          onDismiss: _onFlushbarDismiss,
        ),
      );

  Future<void> showSuccess({
    required PlainLocalizedString message,
    PlainLocalizedString? title,
  }) =>
      _showFlushbar(
        flushbar: SuccessFlushbar(
          context: _context,
          title: title,
          message: message,
          onDismiss: _onFlushbarDismiss,
        ),
      );

  Future<void> show({
    required PlainLocalizedString title,
    required PlainLocalizedString message,
    Widget? icon,
    TextButton? mainButton,
    Color? backgroundColor,
    Duration? duration = const Duration(seconds: 3),
    bool isDismissible = true,
  }) =>
      _showFlushbar(
        flushbar: AppFlushbar(
          context: _context,
          title: title,
          message: message,
          backgroundColor: backgroundColor,
          icon: icon,
          mainButton: mainButton,
          duration: duration,
          isDismissible: isDismissible,
          onDismiss: _onFlushbarDismiss,
        ),
      );

  Future<void> _showFlushbar({
    required AppFlushbar flushbar,
  }) async {
    _currentFlushbar?.dismiss();
    _currentFlushbar = flushbar;
    return flushbar.show(_context);
    // return navigatorKey.currentState?.push<void>(
    //   flushbar_route.showFlushbar<void>(
    //     context: _context,
    //     flushbar: flushbar,
    //   ),
    // );
  }

  void _onFlushbarDismiss() {
    _currentFlushbar = null;
  }
}
