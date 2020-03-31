part of 'all_game_results_bloc.dart';

@freezed
abstract class AllGameResultsState with _$AllGameResultsState {
  const factory AllGameResultsState.loading() = Loading;

  const factory AllGameResultsState.renderGameResults({
    @required KtList<GameResultResponse> gameResults,
  }) = RenderGameResults;

  const factory AllGameResultsState.error(RawKeyString errorMessage) = Error;
}
