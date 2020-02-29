import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).hello),
      ),
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
