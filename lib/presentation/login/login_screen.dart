import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/login/login_bloc.dart';
import 'package:tictactoe/presentation/login/widgets/login_page.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt.get<LoginBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.translateKey('loginScreenToolbar')),
        ),
        body: LoginPage(),
      ),
    );
  }
}
