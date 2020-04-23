part of 'lobby_bloc.dart';

@freezed
abstract class LobbyEvent with _$LobbyEvent {
  const factory LobbyEvent.nothing() = Nothing;
}
