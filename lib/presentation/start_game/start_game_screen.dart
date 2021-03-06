import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/common/router/router.gr.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/presentation/util/app_modal_bottom_sheet.dart';
import 'package:tictactoe/presentation/common/widgets/app_button.dart';
import 'package:tictactoe/presentation/start_game/widgets/game_difficulty_level_buttons.dart';

class StartGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppButton(
                text: context.translateKey('singlePlayerGameScreenTitle'),
                onPressed: () {
                  showAppModalBottomSheet(
                    context: context,
                    builder: (context) => GameDifficultyLevelButtons(),
                  );
                },
              ),
              SizedBox(height: 30),
              AppButton(
                text: context.translateKey('multiplayerGameScreenTitle'),
                onPressed: () => _pushLobbyScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pushLobbyScreen() {
    ExtendedNavigator.ofRouter<Router>().pushLobbyScreen();
  }
}
