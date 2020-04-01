import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_item.dart';

class GameResultList extends StatelessWidget {
  final KtList<GameResultResponse> data;

  const GameResultList({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: data.size,
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
        return GameResultItem(data: data[index]);
      },
    );
  }
}
