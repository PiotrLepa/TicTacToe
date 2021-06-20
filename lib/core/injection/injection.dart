import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/injection/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection() async => $initGetIt(getIt);
