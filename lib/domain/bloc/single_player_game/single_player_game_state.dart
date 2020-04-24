part of 'single_player_game_bloc.dart';

@freezed
abstract class SinglePlayerGameState with _$SinglePlayerGameState {
  const factory SinglePlayerGameState.nothing() = Nothing;

  const factory SinglePlayerGameState.loading() = Loading;

  const factory SinglePlayerGameState.moveLoading() = MoveLoading;

  const factory SinglePlayerGameState.renderGame({
    @required GameMark playerMark,
    @required KtList<GameMove> moves,
  }) = RenderGame;

  const factory SinglePlayerGameState.playerWon() = PlayerWon;

  const factory SinglePlayerGameState.computerWon() = ComputerWon;

  const factory SinglePlayerGameState.draw() = Draw;

  const factory SinglePlayerGameState.error(RawKeyString errorMessage) = Error;

  const factory SinglePlayerGameState.moveError(RawKeyString errorMessage) =
      MoveError;
}
