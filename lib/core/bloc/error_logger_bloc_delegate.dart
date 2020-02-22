import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/logger/logger.dart';

class ErrorLoggerBlocDelegate extends BlocDelegate {
  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    logger.e(bloc, error, stacktrace);
    super.onError(bloc, error, stacktrace);
  }
}
