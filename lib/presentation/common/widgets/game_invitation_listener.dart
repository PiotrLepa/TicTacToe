import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/flushbar_helper.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/game_invitation/game_invitation_bloc.dart';

class GameInvitationListener extends StatelessWidget {
  final Widget child;

  const GameInvitationListener({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameInvitationBloc, GameInvitationState>(
      listener: (context, state) {
        state.maybeMap(
          showGameInvitation: (mappedState) {
            getIt<FlushbarHelper>()
                .showSuccess(message: mappedState.data.toString());
          },
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
