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
                  onPressed: () => context
                      .bloc<StartGameBloc>()
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
      AppLocalizations
          .of(context)
          .difficultyLevelEasy,
      AppLocalizations
          .of(context)
          .difficultyLevelMedium,
      AppLocalizations
          .of(context)
          .difficultyLevelHard,
    ];
    final buttonListeners = [
      StartGameEvent.onEasyTapped(),
      StartGameEvent.onMediumTapped(),
      StartGameEvent.onHardTapped(),
    ];
    return Container(
      color: Color(0xFF737373),
      child: Container(
        decoration: BoxDecoration(
            color: Theme
                .of(context)
                .canvasColor,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(
                  16), // TODO fix radius for dark mode
            )),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: buttonTitles.length,
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Divider(
                  thickness: 1.5,
                  color: Theme
                      .of(context)
                      .dividerColor,
                ),
              );
            },
            itemBuilder: (context, index) {
              return Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () =>
                      context.bloc<StartGameBloc>().add(buttonListeners[index]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      buttonTitles[index],
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 24,
                        color: Theme
                            .of(context)
                            .primaryColor,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
