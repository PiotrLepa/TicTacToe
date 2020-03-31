part of 'all_game_results_bloc.dart';

@freezed
abstract class AllGameResultsEvent with _$AllGameResultsEvent {
  const factory AllGameResultsEvent.screenStarted() = ScreenStarted;

  const factory AllGameResultsEvent.gameResultTapped(GameResultResponse item) =
      GameResultTapped;
}
