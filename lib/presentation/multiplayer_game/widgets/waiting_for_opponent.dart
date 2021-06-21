import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';

class WaitingForOpponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppSeparator.vertical(
          height: MediaQuery.of(context).size.height / 4,
        ),
        const LoadingIndicator(size: 60),
        const AppSeparator.vertical(height: 32),
        Text(
          context.translate(Strings.multiplayerGameWaitingForOpponent),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 36,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
