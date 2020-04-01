part of 'user_game_results_bloc.dart';

@freezed
abstract class UserGameResultsEvent with _$UserGameResultsEvent {
  const factory UserGameResultsEvent.screenStarted() = ScreenStarted;

  const factory UserGameResultsEvent.loadMoreItems({
    @required int currentPage,
    @required bool isLastPage,
  }) = LoadMoreItems;

  const factory UserGameResultsEvent.gameResultTapped(GameResultResponse item) =
      GameResultTapped;
}
