import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_route.dart' as flushbarRoute;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/app_flushbar.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/error_flushbar.dart';
import 'package:tictactoe/core/presentation/widgets/flushbar/success_flushbar.dart';
import 'package:tictactoe/presentation/router/router.gr.dart';

@lazySingleton
class FlushbarHelper {
  BuildContext get _context => ExtendedNavigator.ofRouter<Router>().context;

  bool _isFlushbarVisible = false;

  void dismiss() {
    if (_isFlushbarVisible) {
      _isFlushbarVisible = false;
      ExtendedNavigator.ofRouter<Router>().pop();
    }
  }

  Future<void> showError({
    @required RawKeyString message,
    RawKeyString title,
    bool syncWithNavigation = false,
  }) =>
      _showFlushbar(
        syncWithNavigation: syncWithNavigation,
        flushbar: ErrorFlushbar(
          context: _context,
          title: title,
          message: message,
          onDismiss: _onFlushbarDismiss,
        ),
      );

  Future<void> showSuccess({
    @required RawKeyString message,
    RawKeyString title,
    bool syncWithNavigation = false,
  }) =>
      _showFlushbar(
        syncWithNavigation: syncWithNavigation,
        flushbar: SuccessFlushbar(
          context: _context,
          title: title,
          message: message,
          onDismiss: _onFlushbarDismiss,
        ),
      );

  Future<void> show({
    RawKeyString titleRawKey,
    RawKeyString messageRawKey,
    String title,
    String message,
    Color backgroundColor,
    Widget icon,
    FlatButton mainButton,
    bool infinityDuration = false,
    bool isDismissible = true,
    bool syncWithNavigation = false,
  }) =>
      _showFlushbar(
        syncWithNavigation: syncWithNavigation,
        flushbar: AppFlushbar(
          title: title ?? AppLocalizations.of(_context).get(titleRawKey),
          message: message ?? AppLocalizations.of(_context).get(messageRawKey),
          backgroundColor: backgroundColor,
          icon: icon,
          mainButton: mainButton,
          infinityDuration: infinityDuration,
          isDismissible: isDismissible,
          onDismiss: _onFlushbarDismiss,
        ),
      );

  Future<void> _showFlushbar({
    @required bool syncWithNavigation,
    @required AppFlushbar flushbar,
  }) async {
    if (_isFlushbarVisible) {
      return;
    }
    _isFlushbarVisible = true;
    if (syncWithNavigation) {
      await Future.delayed(Duration(milliseconds: 200));
    }
    return ExtendedNavigator.ofRouter<Router>().push(
      flushbarRoute.showFlushbar(
        context: _context,
        flushbar: flushbar,
      ),
    );
  }

  void _onFlushbarDismiss() {
    _isFlushbarVisible = false;
  }
}
