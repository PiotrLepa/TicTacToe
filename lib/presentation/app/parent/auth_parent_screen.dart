import 'package:flutter/material.dart';
import 'package:tictactoe/core/common/router/routing.dart';

import 'widgets/session_listener.dart';

class AuthParentScreen extends StatelessWidget {
  const AuthParentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SessionListener(
      child: AutoRouter(),
    );
  }
}
