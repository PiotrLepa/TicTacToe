import 'package:flutter/widgets.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';

class AllGameResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(AppLocalizations.of(context).gameResultsAllTab),
      ),
    );
  }
}
