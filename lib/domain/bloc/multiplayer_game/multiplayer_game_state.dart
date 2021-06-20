part of 'multiplayer_game_bloc.dart';

@freezed
class MultiplayerGameState with _$MultiplayerGameState {
  const factory MultiplayerGameState.loading() = Loading;

  const factory MultiplayerGameState.moveLoading() = MoveLoading;

  const factory MultiplayerGameState.renderWaitingForOpponent() =
      RenderWaitingForOpponent;

  const factory MultiplayerGameState.renderGame({
    required MultiplayerGameCombinedStatus status,
    required KtList<GameMove> moves,
  }) = RenderGame;

  const factory MultiplayerGameState.opponentLeftGame() = OpponentLeftGame;

  const factory MultiplayerGameState.error(RawKeyString errorMessage) = Error;

  const factory MultiplayerGameState.moveError(RawKeyString errorMessage) =
      MoveError;
}
