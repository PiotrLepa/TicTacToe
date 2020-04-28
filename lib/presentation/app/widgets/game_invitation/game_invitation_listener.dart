import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/domain/bloc/game_invitation/game_invitation_bloc.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/game_invitation_widget.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/item_fader.dart';

class GameInvitationListener extends StatefulWidget {
  final Widget child;

  const GameInvitationListener({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  _GameInvitationListenerState createState() => _GameInvitationListenerState();
}

class _GameInvitationListenerState extends State<GameInvitationListener> {
  final _itemFaderKey = GlobalKey<ItemFaderState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameInvitationBloc, GameInvitationState>(
      listener: (context, state) {
        state.maybeMap(
          showGameInvitation: (mappedState) {
            _itemFaderKey.currentState.show();
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: <Widget>[
          widget.child,
          ItemFader(
            key: _itemFaderKey,
            child: SafeArea(
              child: GameInvitationWidget(
                onButtonPressed: () {
                  _itemFaderKey.currentState.hide();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
