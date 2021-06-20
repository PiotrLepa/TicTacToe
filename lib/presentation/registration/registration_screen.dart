import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';
import 'package:tictactoe/domain/bloc/registration/registration_bloc.dart';
import 'package:tictactoe/presentation/registration/widgets/registration_page.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (context) => getIt.get<RegistrationBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.translate(Strings.registrationScreenToolbar)),
        ),
        body: RegistrationPage(),
      ),
    );
  }
}
