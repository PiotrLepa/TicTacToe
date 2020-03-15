part of 'game_bloc.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState.nothing() = Nothing;

  const factory GameState.loading() = Loading;

  const factory GameState.gameCreated(int gameId, GameMark playerMark) =
      GameCreated;

  const factory GameState.error(RawKeyString errorMessage) = Error;
}
