import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tictactoe/bloc/test_bloc.dart';
import 'package:tictactoe/bloc/test_event.dart';
import 'package:tictactoe/bloc/test_state.dart';
import 'package:tictactoe/core/bloc/error_logger_bloc_delegate.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/localization/app_localizations.dart';
import 'package:tictactoe/core/localization/locale_provider.dart';

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
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: _localeProvider.getSupportedLocales(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  final LocaleProvider _localeProvider = getIt.get<LocaleProvider>();

  final testBloc = getIt.get<TestBloc>();

  @override
  Widget build(BuildContext context) {
    _localeProvider.currentLocale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).hello),
      ),
      body: BlocProvider(
        create: (context) => testBloc,
        child: Column(
          children: [
            buildButtons(),
            buildNetworkResponse(testBloc),
          ],
        ),
      ),
    );
  }

  Widget buildButtons() => Row(
        children: [
          RaisedButton(
            onPressed: () => testBloc.add(TestEvent.login()),
            child: Text("Login"),
          ),
          RaisedButton(
            onPressed: () => testBloc.add(TestEvent.fetchGames()),
            child: Text("Fetch games"),
          ),
          RaisedButton(
            onPressed: () => testBloc.add(TestEvent.makeError()),
            child: Text("Make Network Error"),
          ),
        ],
      );

  Widget buildNetworkResponse(Bloc bloc) => BlocBuilder<TestBloc, TestState>(
        bloc: bloc,
        builder: (context, state) => state.when(
          initial: () => Container(),
          progress: () => CircularProgressIndicator(),
          success: (result) => Text(
            result,
            style: TextStyle(color: Colors.green),
          ),
          error: (errorMessage) => Text(
            AppLocalizations.of(context).get(errorMessage),
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
}
