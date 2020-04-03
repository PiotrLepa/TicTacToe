import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';
import 'package:tictactoe/presentation/common/paged_list_view.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_item.dart';

class GameResultList extends StatelessWidget {
  final KtList<GameResultResponse> data;
  final bool hasReachedEnd;
  final VoidCallback loadMoreItemsCallback;

  const GameResultList({
    Key key,
    @required this.data,
    @required this.hasReachedEnd,
    @required this.loadMoreItemsCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PagedListView(
      data: data,
      hasReachedEnd: hasReachedEnd,
      itemBuilder: (context, itemData, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: GameResultItem(data: itemData),
        );
      },
      separatorBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Divider(
            thickness: 1.5,
            color: Theme.of(context).dividerColor,
          ),
        );
      },
      loadMoreItemsCallback: loadMoreItemsCallback,
    );
  }
}
