part of 'game_bloc.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState.nothing() = Nothing;

  const factory GameState.loading() = Loading;

  const factory GameState.moveLoading() = MoveLoading;

  const factory GameState.renderGame({
    @required GameMark playerMark,
    @required KtList<GameMove> moves,
  }) = RenderGame;

  const factory GameState.playerWon() = PlayerWon;

  const factory GameState.computerWon() = ComputerWon;

  const factory GameState.draw() = Draw;

  const factory GameState.error(RawKeyString errorMessage) = Error;

  const factory GameState.moveError(RawKeyString errorMessage) = MoveError;
}
