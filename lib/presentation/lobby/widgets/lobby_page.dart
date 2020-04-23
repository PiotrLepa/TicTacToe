import 'package:flutter/material.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';
import 'package:tictactoe/presentation/lobby/widgets/opponent_code.dart';
import 'package:tictactoe/presentation/lobby/widgets/palyer_code.dart';

class LobbyPage extends StatelessWidget {
  final String playerCode;
  final RawKeyString opponentCodeInputError;
  final bool isLoading;

  const LobbyPage({
    Key key,
    @required this.playerCode,
    @required this.opponentCodeInputError,
    @required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            AppSeparator.vertical(height: height / 8),
            PlayerCode(playerCode: playerCode),
            AppSeparator.vertical(height: height / 8),
            OpponentCode(
              inputError: opponentCodeInputError,
              isLoading: isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
