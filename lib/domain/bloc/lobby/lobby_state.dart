part of 'lobby_bloc.dart';

@freezed
class LobbyState with _$LobbyState {
  const factory LobbyState.loading() = Loading;

  const factory LobbyState.renderPage({
    required String playerCode,
  }) = RenderPage;

  const factory LobbyState.renderOpponentCodeInputError({
    required PlainLocalizedString message,
  }) = RenderOpponentCodeInputError;

  const factory LobbyState.createGameLoading() = CreateGameLoading;

  const factory LobbyState.createGameSuccess() = CreateGameSuccess;

  const factory LobbyState.error(
    PlainLocalizedString message,
  ) = Error;

  const factory LobbyState.createGameError(
    PlainLocalizedString message,
  ) = CreateGameError;
}
