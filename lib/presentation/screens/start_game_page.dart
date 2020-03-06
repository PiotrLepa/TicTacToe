import 'package:flutter/cupertino.dart';
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
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      )),
      builder: (context) {
        return buildDifficultyLevelButtons(context);
      },
    );
  }

  Widget buildDifficultyLevelButtons(BuildContext context) {
    final titles = [
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
    final colors = [
      Color(0xFFFF7670),
      Color(0xFFEE4035),
      Color(0xFFB4000C),
    ];
    final listeners = [
      StartGameEvent.onEasyTapped(),
      StartGameEvent.onMediumTapped(),
      StartGameEvent.onHardTapped(),
    ];
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: titles.length,
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
            child: GestureDetector(
              onTap: () => context.bloc<StartGameBloc>().add(listeners[index]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  titles[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: colors[index],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
