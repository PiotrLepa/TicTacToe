import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/bloc/error_logger_bloc_delegate.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/util/locale_provider.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:tictactoe/presentation/screens/router/router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.dev);
  BlocSupervisor.delegate = ErrorLoggerBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final LocaleProvider _localeProvider = getIt.get<LocaleProvider>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationBloc>(
          create: (BuildContext context) => getIt.get<BottomNavigationBloc>(),
        )
      ],
      child: MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: _localeProvider.getSupportedLocales(),
        theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: 'Lato',
        ),
        onGenerateRoute: Router.onGenerateRoute,
        navigatorKey: Router.navigator.key,
        initialRoute: Router.homeScreen,
      ),
    );
  }
}
