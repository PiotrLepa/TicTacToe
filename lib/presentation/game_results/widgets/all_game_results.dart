import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/all_game_results/all_game_results_bloc.dart';
import 'package:tictactoe/presentation/common/loading_indicator.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_list.dart';

class AllGameResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AllGameResultsBloc>(
      create: (context) =>
          getIt<AllGameResultsBloc>()..add(AllGameResultsEvent.screenStarted()),
      child: BlocBuilder<AllGameResultsBloc, AllGameResultsState>(
        builder: (context, state) {
          return state.map(
            loading: (loading) => Center(
              child: LoadingIndicator(),
            ),
            renderGameResults: (renderGameResults) => GameResultList(
              data: renderGameResults.gameResults,
              loadMoreItemsCallback: () {
                context
                    .bloc<AllGameResultsBloc>()
                    .add(AllGameResultsEvent.loadMoreItems());
              },
            ),
            error: (error) => Center(
              child: Text(
                AppLocalizations.of(context).get(error.errorMessage),
              ),
            ),
          );
        },
      ),
    );
  }
}
