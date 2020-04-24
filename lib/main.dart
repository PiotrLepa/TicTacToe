import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/domain/bloc/error_logger_bloc_delegate.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.dev);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  BlocSupervisor.delegate = ErrorLoggerBlocDelegate();
  runApp(App());
  firebaseBackgroundMessageHandler();
}

Future<dynamic> firebaseBackgroundMessageHandler() {
  FirebaseMessaging().configure(
    onMessage: (Map<String, dynamic> message) async {
      logger.d('on message $message');
    },
    onResume: (Map<String, dynamic> message) async {
      logger.d('on resume $message');
    },
    onLaunch: (Map<String, dynamic> message) async {
      logger.d('on launch $message');
    },
  );
}

Future<dynamic> onBackgroundMessage(Map<String, dynamic> message) {
  logger.d('on background message $message');
}