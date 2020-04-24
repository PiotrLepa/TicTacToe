import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/game_results/game_results_bloc.dart';
import 'package:tictactoe/presentation/common/widgets/loading_indicator.dart';
import 'package:tictactoe/presentation/game_results/game_result_type.dart';
import 'package:tictactoe/presentation/game_results/widgets/game_result_list.dart';

class GameResults extends StatefulWidget {
  final GameResultType type;

  const GameResults({
    Key key,
    this.type,
  }) : super(key: key);

  @override
  _GameResultsState createState() => _GameResultsState();
}

class _GameResultsState extends State<GameResults>
    with AutomaticKeepAliveClientMixin<GameResults> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<GameResultsBloc>(
      create: (context) => getIt<GameResultsBloc>()
        ..add(GameResultsEvent.screenStarted(widget.type)),
      child: BlocBuilder<GameResultsBloc, GameResultsState>(
        condition: (oldState, newState) => newState is! AdditionalLoading,
        builder: (context, state) {
          return state.maybeMap(
            loading: (mappedState) => Center(
              child: LoadingIndicator(),
            ),
            renderGameResults: (mappedState) => GameResultList(
              data: mappedState.gameResults,
              hasReachedEnd: mappedState.hasReachedEnd,
              loadMoreItemsCallback: () {
                context
                    .bloc<GameResultsBloc>()
                    .add(GameResultsEvent.loadMoreItems(widget.type));
              },
            ),
            error: (mappedState) => Center(
              child: Text(
                context.translate(mappedState.errorMessage),
              ),
            ),
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
