import 'package:flutter/widgets.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';

class GameResultItem extends StatelessWidget {
  final GameResultResponse data;

  const GameResultItem({
    Key key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(data.toString()),
    );
  }
}
