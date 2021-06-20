import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/domain/entity/game_invitation/game_invitation.dart';
import 'package:tictactoe/domain/repository/game_invitation_repository.dart';

part 'game_invitation_bloc.freezed.dart';
part 'game_invitation_event.dart';
part 'game_invitation_state.dart';

@injectable
class GameInvitationBloc
    extends Bloc<GameInvitationEvent, GameInvitationState> {
  final GameInvitationRepository _gameInvitationRepository;

  GameInvitationBloc(
    this._gameInvitationRepository,
  ) : super(const GameInvitationState.nothing());

  @override
  Stream<GameInvitationState> mapEventToState(
    GameInvitationEvent event,
  ) async* {
    yield* event.map(
      screenStarted: _mapScreenStartedEvent,
      onMessageReceived: _mapOnMessageReceivedEvent,
    );
  }

  Stream<GameInvitationState> _mapScreenStartedEvent(
    ScreenStarted event,
  ) async* {
    yield* _gameInvitationRepository.getGameInvitations().map(
        (gameInvitation) =>
            GameInvitationState.showGameInvitation(gameInvitation));
  }

  Stream<GameInvitationState> _mapOnMessageReceivedEvent(
    OnMessageReceived event,
  ) async* {}
}
