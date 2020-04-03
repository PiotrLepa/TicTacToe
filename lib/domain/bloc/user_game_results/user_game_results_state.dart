part of 'user_game_results_bloc.dart';

@freezed
abstract class UserGameResultsState with _$UserGameResultsState {
  const factory UserGameResultsState.loading() = Loading;

  const factory UserGameResultsState.additionalLoading() = AdditionalLoading;

  const factory UserGameResultsState.renderGameResults({
    @required KtList<GameResultResponse> gameResults,
    @required bool hasReachedEnd,
  }) = RenderGameResults;

  const factory UserGameResultsState.error(RawKeyString errorMessage) = Error;
}
