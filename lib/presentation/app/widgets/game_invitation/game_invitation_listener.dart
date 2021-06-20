import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/domain/bloc/game_invitation/game_invitation_bloc.dart';
import 'package:tictactoe/domain/entity/game_invitation/game_invitation.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/bouncing_widget.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/game_invitation_widget.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/item_fader.dart';

class GameInvitationListener extends StatefulWidget {
  final Widget child;

  const GameInvitationListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _GameInvitationListenerState createState() => _GameInvitationListenerState();
}

class _GameInvitationListenerState extends State<GameInvitationListener> {
  final _itemFaderKey = GlobalKey<ItemFaderState>();
  GameInvitation? _gameData;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameInvitationBloc, GameInvitationState>(
      listener: (context, state) {
        state.maybeMap(
          showGameInvitation: (mappedState) {
            setState(() {
              _gameData = mappedState.data;
            });
            _itemFaderKey.currentState?.show();
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: <Widget>[
          widget.child,
          BouncingWidget(
            duration: const Duration(milliseconds: 1000),
            child: ItemFader(
              key: _itemFaderKey,
              child: SafeArea(
                child: GameInvitationWidget(
                  body: _gameData?.body ?? '',
                  onPlayPressed: () {
                    _itemFaderKey.currentState?.hide();
                    _pushGameScreen();
                  },
                  onDeclinePressed: () {
                    _itemFaderKey.currentState?.hide();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _pushGameScreen() {
    // TODO
    // ExtendedNavigator.ofRouter<Router>().pushMultiplayerGameScreen(
    //   gameId: _gameData.gameId,
    //   socketDestination: _gameData.socketDestination,
    //   playerMark: _gameData.yourMark,
    //   playerType: _gameData.playerType,
    //   fromNotification: true,
    // );
  }
}
