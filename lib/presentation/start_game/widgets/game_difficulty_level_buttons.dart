import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/entity/common/difficulty_level/difficulty_level.dart';

class GameDifficultyLevelButtons extends StatelessWidget {
  final titles = [
    Strings.difficultyLevelEasy,
    Strings.difficultyLevelMedium,
    Strings.difficultyLevelHard,
  ];
  final colors = const [
    Color(0xFFFF7670),
    Color(0xFFEE4035),
    Color(0xFFB4000C),
  ];
  final difficultyLevels = [
    DifficultyLevel.easy,
    DifficultyLevel.medium,
    DifficultyLevel.hard,
  ];

  final void Function(DifficultyLevel)? onTap;

  GameDifficultyLevelButtons({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
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
            child: GestureDetector(
              onTap: () => onTap?.call(difficultyLevels[index]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  context.translate(titles[index]),
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
