import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/presentation/bloc/start_game/start_game_bloc.dart';

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
                  onPressed: () => BlocProvider.of<StartGameBloc>(context)
                      .add(StartGameEvent.onStartGameTapped()),
                  child: Text(
                    AppLocalizations.of(context).startGameGameWithComputer,
                  ),
                ),
              ),
              BlocListener<StartGameBloc, StartGameState>(
                condition: (previousState, state) => true,
                listener: (BuildContext context, StartGameState state) {
                  state.when(
                    nothing: () {},
                    showDifficultyLevelButtons: () {
                      _showDifficultyLevelButtonsModal(context);
                    },
                  );
                },
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDifficultyLevelButtonsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return buildDifficultyLevelButtons(context);
      },
    );
  }

  Widget buildDifficultyLevelButtons(BuildContext context) {
    final buttonTitles = [
      AppLocalizations.of(context).difficultyLevelEasy,
      AppLocalizations.of(context).difficultyLevelMedium,
      AppLocalizations.of(context).difficultyLevelHard,
    ];
    final buttonListeners = [
      StartGameEvent.onEasyTapped(),
      StartGameEvent.onMediumTapped(),
      StartGameEvent.onHardTapped(),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: buttonTitles.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 8,
          );
        },
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.center,
            child: RaisedButton(
              color: Theme.of(context).primaryColorDark,
              onPressed: () => BlocProvider.of<StartGameBloc>(context)
                  .add(buttonListeners[index]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  buttonTitles[index],
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
