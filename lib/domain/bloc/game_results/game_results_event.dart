part of 'game_results_bloc.dart';

@freezed
abstract class GameResultsEvent with _$GameResultsEvent {
  const factory GameResultsEvent.screenStarted(GameResultType type) =
      ScreenStarted;

  const factory GameResultsEvent.loadMoreItems(GameResultType type) =
      LoadMoreItems;

  const factory GameResultsEvent.gameResultTapped(GameResultResponse item) =
      GameResultTapped;
}