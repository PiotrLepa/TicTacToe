import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/start_page/start_bloc.dart';
import 'package:tictactoe/presentation/start/widgets/start_page.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<StartBloc>(
      create: (context) => getIt.get<StartBloc>(),
      child: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
