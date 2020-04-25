import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/common/notification/data/game_request_notification_data.dart';
import 'package:tictactoe/core/common/notification/notification_manager.dart';
import 'package:tictactoe/core/common/serialization/model_decoder.dart';
import 'package:tictactoe/core/injection/injection.dart';

final notificationManager = getIt<NotificationManager>();
final modelDecoder = getIt<ModelDecoder>();

class GameRequestListener extends StatefulWidget {
  final Widget child;

  const GameRequestListener({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  _GameRequestListenerState createState() => _GameRequestListenerState();
}

class _GameRequestListenerState extends State<GameRequestListener> {
  final _firebaseMessaging = getIt<FirebaseMessaging>();
  final _flushbarHelper = getIt<FlushbarHelper>();

  @override
  void initState() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        logger.d('on message $message');
        _flushbarHelper.showSuccess(message: "message");
      },
      onBackgroundMessage: onBackgroundMessage,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

Future<dynamic> onBackgroundMessage(Map<String, dynamic> message) async {
  logger.d('on background message $message');
  final decodedData = modelDecoder.decode<GameRequestNotificationData>(message);
  notificationManager.showGameRequestNotification(decodedData);
}