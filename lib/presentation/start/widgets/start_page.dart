import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictactoe/core/common/router/routing.dart';
import 'package:tictactoe/domain/bloc/start_page/start_bloc.dart';
import 'package:tictactoe/presentation/start/widgets/start_page_bottom.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<StartBloc, StartState>(
      listener: _respondForState,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          Flexible(
            flex: 2,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: SvgPicture.asset('assets/login_image.svg'),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Flexible(
            flex: 3,
            child: StartPageBottom(),
          )
        ],
      ),
    );
  }

  void _respondForState(BuildContext context, StartState state) {
    state.maybeMap(
      navigateToRegistration: (_) {
        context.router.push(const RegistrationScreenRoute());
      },
      navigateToLogin: (_) {
        context.router.push(const LoginScreenRoute());
      },
      orElse: () {},
    );
  }
}
