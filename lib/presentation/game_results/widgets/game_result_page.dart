import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/core/extension/build_context_extension.dart';
import 'package:tictactoe/core/injection/injection.dart';
import 'package:tictactoe/domain/bloc/game_results/game_results_bloc.dart';
import 'package:tictactoe/presentation/common/widgets/scrollable_widget.dart';
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

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _refreshIndicatorKey.currentState?.show();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider<GameResultsBloc>(
      create: (context) => getIt<GameResultsBloc>(),
      child: Builder(
        builder: (context) {
          return RefreshIndicator(
            key: _refreshIndicatorKey,
            onRefresh: () {
              context
                  .bloc<GameResultsBloc>()
                  .add(GameResultsEvent.onRefreshSwiped(widget.type));
              return _refreshCompleter.future;
            },
            child: BlocConsumer<GameResultsBloc, GameResultsState>(
              listener: respondForState,
              buildWhen: (oldState, newState) => newState is! AdditionalLoading,
              builder: buildForState,
            ),
          );
        },
      ),
    );
  }

  void respondForState(BuildContext context, GameResultsState state) {
    state.maybeMap(
      loading: (mappedState) {
        _refreshIndicatorKey.currentState.show();
      },
      renderGameResults: (mappedState) {
        _refreshCompleter?.complete();
        _refreshCompleter = Completer();
      },
      error: (mappedState) {
        _refreshCompleter?.complete();
        _refreshCompleter = Completer();
      },
      orElse: () {},
    );
  }

  Widget buildForState(BuildContext context, GameResultsState state) {
    return state.maybeMap(
      renderGameResults: (mappedState) {
        return GameResultList(
          data: mappedState.gameResults,
          hasReachedEnd: mappedState.hasReachedEnd,
          loadMoreItemsCallback: () {
            context
                .bloc<GameResultsBloc>()
                .add(GameResultsEvent.loadMoreItems(widget.type));
          },
        );
      },
      error: (mappedState) {
        return ScrollableWidget(
          child: Center(
            child: Text(
              context.translate(mappedState.errorMessage),
            ),
          ),
        );
      },
      orElse: () {
        return ScrollableWidget(
          child: Container(),
        );
      },
    );
  }
}
