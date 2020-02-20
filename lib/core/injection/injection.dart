import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/injection/injection.iconfig.dart';

final g = GetIt.instance;

@injectableInit
Future<void> configureInjection(String environment) async =>
    $initGetIt(g, environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const test = 'test';
  static const prod = 'prod';
}
