part of 'lobby_bloc.dart';

@freezed
abstract class LobbyState with _$LobbyState {
  const factory LobbyState.loading({@required String playerCode}) = Loading;

  const factory LobbyState.renderPlayerCode({@required String playerCode}) =
      RenderPlayerCode;

  const factory LobbyState.renderOpponentCodeInputError({
    @required String playerCode,
    @required RawKeyString errorKey,
  }) = RenderOpponentCodeInputError;

  const factory LobbyState.createGameLoading({@required String playerCode}) =
      CreateGameLoading;

  const factory LobbyState.createGameSuccess({@required String playerCode}) =
      CreateGameSuccess;

  const factory LobbyState.error({
    @required String playerCode,
    @required RawKeyString errorMessage,
  }) = Error;
}
