import 'package:flutter/material.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/presentation/common/widgets/app_field_form.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';
import 'package:tictactoe/presentation/common/widgets/progress_button.dart';

class OpponentCode extends StatelessWidget {
  final bool isLoading;

  const OpponentCode({
    Key key,
    @required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppFormField(
          labelText: context.translateKey('lobbyOpponentCodeInputLabel'),
        ),
        AppSeparator.vertical(height: 16),
        ProgressButton(
          onPressed: () {},
          text: context.translateKey('lobbyStartGameButtonLabel'),
          loadingText: context.translateKey('lobbyStartGameButtonLoadingLabel'),
          isLoading: isLoading,
        ),
      ],
    );
  }
}
