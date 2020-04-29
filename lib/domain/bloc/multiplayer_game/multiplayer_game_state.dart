part of 'multiplayer_game_bloc.dart';

@freezed
abstract class MultiplayerGameState with _$MultiplayerGameState {
  const factory MultiplayerGameState.loading() = Loading;

  const factory MultiplayerGameState.moveLoading() = MoveLoading;

  const factory MultiplayerGameState.renderGame({
    @required GameMark playerMark,
    @required KtList<GameMove> moves,
  }) = RenderGame;

  const factory MultiplayerGameState.gameWon() = GameWon;

  const factory MultiplayerGameState.gameLost() = GameLost;

  const factory MultiplayerGameState.draw() = Draw;

  const factory MultiplayerGameState.error(RawKeyString errorMessage) = Error;

  const factory MultiplayerGameState.moveError(RawKeyString errorMessage) =
      MoveError;
}
