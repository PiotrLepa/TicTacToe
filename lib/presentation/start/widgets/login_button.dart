import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.white,
      child: Text(
        AppLocalizations.of(context).startScreenLoginButton,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: ThemeProvider.of(context).textColorLight,
        ),
      ),
      onPressed: () {},
    );
  }
}
