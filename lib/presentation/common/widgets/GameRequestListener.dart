import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/injection/injection.dart';

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
  final firebaseMessaging = getIt<FirebaseMessaging>();
  final flushbarHelper = getIt<FlushbarHelper>();

  @override
  void initState() {
    logger.d('init state');
    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        logger.d('on message $message');
        flushbarHelper.showSuccess(message: "message");
        await _showNotification('message');
      },
      onResume: (Map<String, dynamic> message) async {
        logger.d('on resume $message');
        flushbarHelper.showSuccess(message: "resume");
      },
      onLaunch: (Map<String, dynamic> message) async {
        logger.d('on launch $message');
        flushbarHelper.showSuccess(message: "launch");
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
  await _showNotification("background");
  logger.d('on background message after $message');
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _showNotification(String title) async {
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'your channel id',
    'your channel name',
    'your channel description',
    importance: Importance.Max,
    priority: Priority.High,
    ticker: 'ticker',
    icon: 'app_icon',
  );
  var iOSPlatformChannelSpecifics = IOSNotificationDetails();
  var platformChannelSpecifics = NotificationDetails(
    androidPlatformChannelSpecifics,
    iOSPlatformChannelSpecifics,
  );
  await flutterLocalNotificationsPlugin.show(
    0,
    title,
    'plain body',
    platformChannelSpecifics,
    payload: 'item x',
  );
}
