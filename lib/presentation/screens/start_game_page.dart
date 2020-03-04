import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/presentation/bloc/start_game/start_game_bloc.dart';

class StartGamePage extends StatefulWidget {
  @override
  _StartGamePageState createState() => _StartGamePageState();
}

class _StartGamePageState extends State<StartGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () => BlocProvider.of<StartGameBloc>(context)
                    .add(StartGameEvent.onStartGameTapped()),
                child: Text(
                  AppLocalizations.of(context).startGameGameWithComputer,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
