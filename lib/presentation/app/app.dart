import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tictactoe/core/common/locale_provider.dart';
import 'package:tictactoe/core/common/router/router.gr.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';
import 'package:tictactoe/domain/bloc/game_invitation/game_invitation_bloc.dart';
import 'package:tictactoe/domain/bloc/home/home_bloc.dart';
import 'package:tictactoe/domain/bloc/multiplayer_game/multiplayer_game_bloc.dart';
import 'package:tictactoe/domain/bloc/single_player_game/single_player_game_bloc.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/game_invitation_listener.dart';

class App extends StatelessWidget {
  final LocaleProvider _localeProvider = getIt.get<LocaleProvider>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GameInvitationBloc>(
          create: (context) => getIt.get<GameInvitationBloc>()
            ..add(GameInvitationEvent.screenStarted()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) =>
              getIt.get<HomeBloc>()..add(HomeEvent.appStarted()),
        ),
        BlocProvider<SinglePlayerGameBloc>(
          create: (context) => getIt.get<SinglePlayerGameBloc>(),
        ),
        BlocProvider<MultiplayerGameBloc>(
          create: (context) => getIt.get<MultiplayerGameBloc>(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: _localeProvider.getSupportedLocales().asList(),
        theme: ThemeProvider(isDark: false).getThemeData(),
        darkTheme: ThemeProvider(isDark: true).getThemeData(),
        builder: (BuildContext context, Widget widget) {
          return GameInvitationListener(
            child: ExtendedNavigator<Router>(router: Router()),
          );
        },
      ),
    );
  }
}
