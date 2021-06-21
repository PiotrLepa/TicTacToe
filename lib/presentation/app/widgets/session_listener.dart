import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/domain/bloc/session/session_bloc.dart';

class SessionListener extends StatelessWidget {
  final Widget child;

  const SessionListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SessionBloc, SessionState>(
      listener: (context, state) {
        state.maybeMap(
          navigateToStart: (_) {
            context.router.replaceAll([const StartScreenRoute()]);
          },
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
