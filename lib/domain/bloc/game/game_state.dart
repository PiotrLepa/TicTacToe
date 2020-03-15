part of 'game_bloc.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState.nothing() = Nothing;

  const factory GameState.loading() = Loading;

  const factory GameState.gameCreated({
    @required int gameId,
    @required GameMark playerMark,
    @required BuiltList<GameMove> moves,
  }) = GameCreated;

  const factory GameState.error(RawKeyString errorMessage) = Error;
}
