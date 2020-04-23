import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/lobby/lobby_bloc.dart';
import 'package:tictactoe/presentation/lobby/widgets/lobby_page.dart';

class LobbyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LobbyBloc>(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(context.translateKey('lobbyAppBarTitle')),
          ),
          body: LobbyPage()),
    );
  }
}
