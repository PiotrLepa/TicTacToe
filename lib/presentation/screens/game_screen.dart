import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/game/game_bloc.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';
import 'package:tictactoe/presentation/screens/game_page.dart';
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
        child: BlocBuilder<GameBloc, GameState>(
          condition: (oldState, newState) {
            if (newState is GameCreated && newState.moves.isNotEmpty) {
              setState(() {
                _isFieldLoadingVisible = false;
              });
            }
            return true;
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
                onFieldTapped: (index) {
                  setState(() {
                    _isFieldLoadingVisible = true;
                  });
                  context.bloc<GameBloc>().add(GameEvent.onFieldTapped(index));
                },
              ),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
