import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/util/app_modal_bottom_sheet.dart';
import 'package:tictactoe/presentation/common/widgets/app_button.dart';
import 'package:tictactoe/presentation/start_game/widgets/game_difficulty_level_buttons.dart';

class StartGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppButton(
              text: context.translate(Strings.singlePlayerGameScreenTitle),
              onPressed: () {
                showAppModalBottomSheet<void>(
                  context: context,
                  builder: (context) => GameDifficultyLevelButtons(),
                );
              },
            ),
            const SizedBox(height: 30),
            AppButton(
              text: context.translate(Strings.multiplayerGameScreenTitle),
              onPressed: () => _pushLobbyScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  void _pushLobbyScreen(BuildContext context) {
    context.router.push(const LobbyScreenRoute());
  }
}
