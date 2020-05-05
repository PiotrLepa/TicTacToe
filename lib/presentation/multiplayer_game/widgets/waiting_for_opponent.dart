import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
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
        LoadingIndicator(size: 60),
        AppSeparator.vertical(height: 32),
        Text(
          context.translateKey('multiplayerGameWaitingForOpponent'),
          style: TextStyle(
            fontSize: 36,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
