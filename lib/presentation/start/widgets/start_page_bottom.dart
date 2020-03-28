import 'package:flutter/material.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/presentation/start/widgets/half_circle_shape_painter.dart';
import 'package:tictactoe/presentation/start/widgets/registration_button.dart';

import 'login_button.dart';

class StartPageBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HalfCircleShapePainter(Theme.of(context).primaryColor),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              AppLocalizations.of(context).startScreenTitle,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                      right: 12,
                    ),
                    child: RegistrationButton(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 18,
                    ),
                    child: LoginButton(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
