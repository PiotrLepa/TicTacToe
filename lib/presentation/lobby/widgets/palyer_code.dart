import 'package:flutter/material.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';

class PlayerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          context.translateKey('lobbyPlayerCodeLabel'),
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        AppSeparator.vertical(height: 12),
        Text(
          "98412345",
          style: TextStyle(
            fontSize: 50,
            letterSpacing: 4,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
