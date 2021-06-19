import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/content/single_player_game_result_response.dart';
import 'package:tictactoe/presentation/common/widgets/paged_list_view.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_item.dart';

class GameResultList extends StatelessWidget {
  final KtList<SinglePlayerGameResultResponse> data;
  final bool hasReachedEnd;
  final VoidCallback loadMoreItemsCallback;

  const GameResultList({
    Key? key,
    required this.data,
    required this.hasReachedEnd,
    required this.loadMoreItemsCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedListView(
      data: data,
      hasReachedEnd: hasReachedEnd,
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, itemData, index) {
        return GameResultItem(data: itemData);
      },
      separatorBuilder: (context, index) {
        return Divider(
          thickness: 1.5,
          color: Theme.of(context).dividerColor,
          indent: 18,
        );
      },
      loadMoreItemsCallback: loadMoreItemsCallback,
    );
  }
}
