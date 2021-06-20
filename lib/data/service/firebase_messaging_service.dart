import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/serialization/model_decoder.dart';
import 'package:tictactoe/data/model/game_invitation/game_invitation_model.dart';

@lazySingleton
class FirebaseMessagingService {
  final ModelDecoder _modelDecoder;

  FirebaseMessagingService(
    this._modelDecoder,
  );

  Stream<GameInvitationModel> getGameInvitations() =>
      FirebaseMessaging.onMessage.map(_decodeMessage);

  GameInvitationModel _decodeMessage(RemoteMessage event) {
    // TODO check event.data
    return _modelDecoder.decode<GameInvitationModel>(event.data)
        as GameInvitationModel;
  }
}
