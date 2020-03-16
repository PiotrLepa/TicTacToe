import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/game/game_bloc.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/domain/entity/common/game_move/game_move.dart';
import 'package:tictactoe/presentation/screens/game_page.dart';
import 'package:tictactoe/presentation/util/error_handler.dart';
import 'package:tictactoe/presentation/widgets/loading_indicator.dart';

class GameScreen extends StatefulWidget {
  final DifficultyLevel difficultyLevel;

  const GameScreen({
    Key key,
    @required this.difficultyLevel,
  }) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool _isFieldLoadingVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).gameScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocListener<GameBloc, GameState>(
          listener: (context, state) {
            if (state is Error) {
              getIt<ErrorHandler>().showError(context, state.errorMessage);
              setState(() {
                _isFieldLoadingVisible = false;
              });
            }
          },
          child: BlocBuilder<GameBloc, GameState>(
            condition: (oldState, newState) {
              if (newState is GameCreated && newState.moves.isNotEmpty) {
                setState(() {
                  _isFieldLoadingVisible = false;
                });
              }
              return newState is! Error;
            },
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => Center(
                  child: LoadingIndicator(),
                ),
                gameCreated: (gameCrated) => GamePage(
                  playerMark: gameCrated.playerMark,
                  moves: gameCrated.moves,
                  isLoadingVisible: _isFieldLoadingVisible,
                  onFieldTapped: (index) =>
                      _onFieldTapped(context, gameCrated, index),
                ),
                orElse: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onFieldTapped(BuildContext context, GameCreated gameCrated, int index) {
    if (_isFieldEmpty(gameCrated.moves, index)) {
      setState(() {
        _isFieldLoadingVisible = true;
      });
      context.bloc<GameBloc>().add(GameEvent.onFieldTapped(index));
    }
  }

  bool _isFieldEmpty(BuiltList<GameMove> moves, int fieldIndex) =>
      moves.where((move) => move.fieldIndex == fieldIndex).isEmpty;
}
