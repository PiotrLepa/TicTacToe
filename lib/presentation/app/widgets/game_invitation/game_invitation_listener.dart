import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/domain/bloc/game_invitation/game_invitation_bloc.dart';
import 'package:tictactoe/presentation/app/widgets/game_invitation/game_invitation_widget.dart';

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
  GlobalKey<_ItemFaderState> _itemFaderKey = GlobalKey<_ItemFaderState>();

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
          SafeArea(
            child: ItemFader(
              key: _itemFaderKey,
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

class ItemFader extends StatefulWidget {
  final Widget child;

  const ItemFader({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _ItemFaderState createState() => _ItemFaderState();
}

class _ItemFaderState extends State<ItemFader>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 64 * _animation.value),
          child: Opacity(
            opacity: _animation.value,
            child: child,
          ),
        );
      },
    );
  }

  void show() {
    setState(() {
      _controller.forward();
    });
  }

  void hide() {
    setState(() {
      _controller.reverse();
    });
  }
}
