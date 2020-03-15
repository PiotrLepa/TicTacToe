import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/presentation/util/show_app_modal_bottom_sheet.dart';
import 'package:tictactoe/presentation/widgets/game_difficulty_level_buttons.dart';

class StartGamePage extends StatelessWidget {
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
                    AppLocalizations.of(context).startGameGameWithComputer,
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
