import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/presentation/util/app_modal_bottom_sheet.dart';
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
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () => showAppModalBottomSheet(
                    context: context,
                    builder: (context) => GameDifficultyLevelButtons(),
                  ),
                  child: Text(
                    context.translateKey('startGameGameWithComputer'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
