import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/domain/bloc/error_logger_bloc_delegate.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/presentation/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.dev);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  BlocSupervisor.delegate = ErrorLoggerBlocDelegate();
  runApp(App());
}
