import 'package:flutter/material.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';
import 'package:tictactoe/presentation/lobby/widgets/opponent_code.dart';
import 'package:tictactoe/presentation/lobby/widgets/palyer_code.dart';

class LobbyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox.expand(
        child: Column(
          children: <Widget>[
            AppSeparator.vertical(height: height / 8),
            PlayerCode(),
            AppSeparator.vertical(height: height / 8),
            OpponentCode(
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
