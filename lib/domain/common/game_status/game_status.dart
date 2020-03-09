library game_status;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_status.freezed.dart';

@freezed
abstract class GameStatus with _$GameStatus {
  const factory GameStatus.onGoing() = _OnGoing;

  const factory GameStatus.playerWon() = _PlayerWon;

  const factory GameStatus.computerWon() = _ComputerWon;

  const factory GameStatus.draw() = _Draw;
}
