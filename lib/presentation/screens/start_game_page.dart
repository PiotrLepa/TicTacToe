import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/presentation/bloc/start_game/start_game_bloc.dart';

class StartGamePage extends StatefulWidget {
  @override
  _StartGamePageState createState() => _StartGamePageState();
}

class _StartGamePageState extends State<StartGamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StartGameBloc, StartGameState>(
        builder: (context, state) {
          return Text("start");
        },
      ),
    );
  }
}
