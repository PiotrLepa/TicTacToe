import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/router/app_router.gr.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/core/presentation/theme/theme_provider.dart';
import 'package:tictactoe/domain/bloc/game_invitation/game_invitation_bloc.dart';
import 'package:tictactoe/domain/bloc/home/home_bloc.dart';

import '../../core/common/locale_provider.dart';

class App extends StatelessWidget {
  final _localeProvider = getIt<LocaleProvider>();
  final _appRouter = AppRouter(navigatorKey);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GameInvitationBloc>(
          create: (context) => getIt.get<GameInvitationBloc>()
            ..add(const GameInvitationEvent.screenStarted()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) =>
              getIt.get<HomeBloc>()..add(const HomeEvent.appStarted()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: AutoLocalizedData.localizationsDelegates,
        supportedLocales: AutoLocalizedData.supportedLocales,
        theme: ThemeProvider(isDark: false).getThemeData(),
        darkTheme: ThemeProvider(isDark: true).getThemeData(),
        builder: (context, child) {
          _localeProvider.init(context);
          return child!;
        },
      ),
    );
  }
}
