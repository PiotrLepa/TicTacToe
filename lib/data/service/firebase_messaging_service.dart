import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/common/serialization/model_decoder.dart';
import 'package:tictactoe/data/model/game_invitation/game_invitation_model.dart';

@lazySingleton
class FirebaseMessagingService {
  final FirebaseMessaging _firebaseMessaging;
  final ModelDecoder _modelDecoder;

  FirebaseMessagingService(
    this._firebaseMessaging,
    this._modelDecoder,
  );

  Stream<GameInvitationModel> getGameInvitations() {
    final _messageController = StreamController<GameInvitationModel>();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        logger.d('on message $message');
        _messageController.add(_decodeMessage(message));
      },
      onLaunch: (Map<String, dynamic> message) async {
        logger.d('on launch $message');
        _messageController.add(_decodeMessage(message));
      },
      onResume: (Map<String, dynamic> message) async {
        logger.d('on launch $message');
        _messageController.add(_decodeMessage(message));
      },
    );
    return _messageController.stream;
  }

  GameInvitationModel _decodeMessage(Map<String, dynamic> message) {
    return _modelDecoder.decode<GameInvitationModel>(message['data']);
  }
}
