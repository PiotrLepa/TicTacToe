import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';
import 'package:tictactoe/domain/bloc/game/game_bloc.dart';

class GameDifficultyLevelButtons extends StatelessWidget {
  final titles = [
    KeyString("difficultyLevelEasy"),
    KeyString("difficultyLevelMedium"),
    KeyString("difficultyLevelHard"),
  ];
  final colors = [
    Color(0xFFFF7670),
    Color(0xFFEE4035),
    Color(0xFFB4000C),
  ];
  final listeners = [
    GameEvent.onEasyTapped(),
    GameEvent.onMediumTapped(),
    GameEvent.onHardTapped(),
  ];

  @override
  Widget build(BuildContext context) {
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
              color: Theme.of(context).dividerColor,
            ),
          );
        },
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () => context.bloc<GameBloc>().add(listeners[index]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  AppLocalizations.of(context).get(titles[index]),
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
