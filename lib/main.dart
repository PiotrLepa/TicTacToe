import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/presentation/app/app.dart';

import 'core/domain/bloc/error_logger_bloc_observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await configureInjection(Env.dev);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Bloc.observer = getIt<ErrorLoggerBlocObserver>();
  runApp(App());
}
