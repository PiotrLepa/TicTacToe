import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/notification/data/game_request_notification_data.dart';

@lazySingleton
class NotificationManager {
  final FlutterLocalNotificationsPlugin notificationsPlugin;

  NotificationManager(this.notificationsPlugin);

  Future<void> showGameRequestNotification(
    GameRequestNotificationData data,
  ) async {
    final gameRequestChannelName = 'Game requests';
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      gameRequestChannelName,
      gameRequestChannelName,
      gameRequestChannelName,
      importance: Importance.Max,
      priority: Priority.High,
      icon: 'app_icon',
    );
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      androidPlatformChannelSpecifics,
      iOSPlatformChannelSpecifics,
    );
    await notificationsPlugin.show(
      0,
      data.playerType.toString(),
      data.yourMark.toString(),
      platformChannelSpecifics,
      payload: jsonEncode(data.toJson()),
    );
  }
}
