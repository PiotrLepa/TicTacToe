part of 'start_game_bloc.dart';

@freezed
abstract class StartGameState with _$StartGameState {
  const factory StartGameState.nothing() = _Nothing;

  const factory StartGameState.showDifficultyLevelButtons() =
      ShowDifficultyLevelButtons;

  const factory StartGameState.showLoading() = ShowLoading;

  const factory StartGameState.error(RawKeyString errorMessage) = Error;
}
