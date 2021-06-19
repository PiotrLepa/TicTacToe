part of 'lobby_bloc.dart';

@freezed
abstract class LobbyState with _$LobbyState {
  const factory LobbyState.loading() = Loading;

  const factory LobbyState.renderPage({
    required String playerCode,
  }) = RenderPage;

  const factory LobbyState.renderOpponentCodeInputError({
    required RawKeyString errorKey,
  }) = RenderOpponentCodeInputError;

  const factory LobbyState.createGameLoading() = CreateGameLoading;

  const factory LobbyState.createGameSuccess() = CreateGameSuccess;

  const factory LobbyState.error(
    RawKeyString errorMessage,
  ) = Error;

  const factory LobbyState.createGameError(
    RawKeyString errorMessage,
  ) = CreateGameError;
}
