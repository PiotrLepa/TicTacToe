part of 'user_game_results_bloc.dart';

@freezed
abstract class UserGameResultsState with _$UserGameResultsState {
  const factory UserGameResultsState.loading() = Loading;

  const factory UserGameResultsState.renderGameResults({
    @required KtList<GameResultResponse> gameResults,
  }) = RenderGameResults;

  const factory UserGameResultsState.error(RawKeyString errorMessage) = Error;
}
