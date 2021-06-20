part of 'game_results_bloc.dart';

@freezed
class GameResultsState with _$GameResultsState {
  const factory GameResultsState.loading() = Loading;

  const factory GameResultsState.additionalLoading() = AdditionalLoading;

  const factory GameResultsState.renderGameResults({
    required KtList<SinglePlayerGameResultResponse> gameResults,
    required bool hasReachedEnd,
  }) = RenderGameResults;

  const factory GameResultsState.error(PlainLocalizedString message) = Error;
}
