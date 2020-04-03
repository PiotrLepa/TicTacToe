import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/core/presentation/localization/app_localizations.dart';
import 'package:tictactoe/domain/bloc/user_game_results/user_game_results_bloc.dart';
import 'package:tictactoe/presentation/common/loading_indicator.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_list.dart';

class UserGameResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserGameResultsBloc>(
      create: (context) => getIt<UserGameResultsBloc>()
        ..add(UserGameResultsEvent.screenStarted()),
      child: BlocBuilder<UserGameResultsBloc, UserGameResultsState>(
        condition: (oldState, newState) => newState is! AdditionalLoading,
        builder: (context, state) {
          return state.maybeMap(
            loading: (loading) => Center(
              child: LoadingIndicator(),
            ),
            renderGameResults: (renderGameResults) => GameResultList(
              data: renderGameResults.gameResults,
              hasReachedEnd: renderGameResults.hasReachedEnd,
              loadMoreItemsCallback: () {
                context
                    .bloc<UserGameResultsBloc>()
                    .add(UserGameResultsEvent.loadMoreItems());
              },
            ),
            error: (error) => Center(
              child: Text(
                AppLocalizations.of(context).get(error.errorMessage),
              ),
            ),
            orElse: () {},
          );
        },
      ),
    );
  }
}
