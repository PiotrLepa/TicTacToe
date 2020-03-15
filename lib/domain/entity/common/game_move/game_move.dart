library game_move;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/domain/entity/common/game_mark/game_mark.dart';

part 'game_move.freezed.dart';

@freezed
abstract class GameMove with _$GameMove {
  const factory GameMove({
    @required int moveId,
    @required int fieldIndex,
    @required int counter,
    @required GameMark mark,
  }) = _GameMove;
}
