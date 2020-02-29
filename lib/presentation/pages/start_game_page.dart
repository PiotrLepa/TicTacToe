import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/util/locale_provider.dart';
import 'package:tictactoe/presentation/pages/router/router.gr.dart';
import 'package:tictactoe/presentation/test_bloc.dart';
import 'package:tictactoe/presentation/test_event.dart';
import 'package:tictactoe/presentation/test_state.dart';

class StartGamePage extends StatelessWidget {
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

  Widget buildButtons() => Wrap(
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
          RaisedButton(
            onPressed: () => Router.navigator.pushNamed(Router.gameResultsPage),
            child: Text("Results Page"),
          ),
          RaisedButton(
            onPressed: () => Router.navigator.pushNamed(Router.settingsPage),
            child: Text("Settings Page"),
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
