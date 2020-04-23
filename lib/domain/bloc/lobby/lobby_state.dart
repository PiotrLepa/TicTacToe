part of 'lobby_bloc.dart';

@freezed
abstract class LobbyState with _$LobbyState {
  const factory LobbyState.nothing() = NothingState;
}
