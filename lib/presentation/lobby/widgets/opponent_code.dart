import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/domain/bloc/lobby/lobby_bloc.dart';
import 'package:tictactoe/presentation/common/widgets/app_field_form.dart';
import 'package:tictactoe/presentation/common/widgets/app_separator.dart';
import 'package:tictactoe/presentation/common/widgets/progress_button.dart';

class OpponentCode extends StatefulWidget {
  final RawKeyString? inputError;
  final bool isLoading;

  const OpponentCode({
    Key? key,
    this.inputError,
    this.isLoading = false,
  }) : super(key: key);

  @override
  _OpponentCodeState createState() => _OpponentCodeState();
}

class _OpponentCodeState extends State<OpponentCode> {
  final _opponentCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppFormField(
          controller: _opponentCodeController,
          labelText: context.translateKey('lobbyOpponentCodeInputLabel'),
          type: TextInputType.number,
          maxLength: 8,
          errorText: widget.inputError,
        ),
        const AppSeparator.vertical(height: 16),
        ProgressButton(
          onPressed: () {
            FocusScope.of(context).unfocus();
            context
                .read<LobbyBloc>()
                .add(LobbyEvent.startGamePressed(_opponentCodeController.text));
          },
          text: context.translateKey('lobbyStartGameButtonLabel'),
          loadingText: context.translateKey('lobbyStartGameButtonLoadingLabel'),
          isLoading: widget.isLoading,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _opponentCodeController.dispose();
    super.dispose();
  }
}
