import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/domain/bloc/pagination_handler.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/content/single_player_game_result_response.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/single_player_game_result_paged_response.dart';
import 'package:tictactoe/domain/repository/game_result_repository.dart';
import 'package:tictactoe/presentation/game_results/game_result_type.dart';

part 'game_results_bloc.freezed.dart';
part 'game_results_event.dart';
part 'game_results_state.dart';

@injectable
class GameResultsBloc extends Bloc<GameResultsEvent, GameResultsState>
    with PaginationHandler<SinglePlayerGameResultResponse> {
  final GameResultRepository _gameResultRepository;

  GameResultsBloc(this._gameResultRepository,) : super(const GameResultsState.loading());

  @override
  Stream<GameResultsState> mapEventToState(GameResultsEvent event,) async* {
    yield* event.map(
      loadMoreItems: _mapLoadMoreItemsEvent,
      onRefreshSwiped: _mapOnRefreshSwiped,
      gameResultTapped: _mapGameResultTappedEvent,
    );
  }

  Stream<GameResultsState> _mapLoadMoreItemsEvent(LoadMoreItems event) async* {
    if (hasMorePages()) {
      yield* _fetchGameResults(getNextPage(), event.type);
    }
  }

  Stream<GameResultsState> _mapOnRefreshSwiped(OnRefreshSwiped event) async* {
    clearPagination();
    yield* _fetchGameResults(0, event.type);
  }

  Stream<GameResultsState> _fetchGameResults(int page,
      GameResultType type,) async* {
    final fetchResult = pagedFetch(
      page: page,
      call: _getFetchCall(page, type),
    );
    await for (final state in fetchResult) {
      yield* state.when(
        initialProgress: () async* {
          yield const GameResultsState.loading();
        },
        initialSuccess: (response) async* {
          yield* _renderGameResults(response);
        },
        initialError: (errorMessage) async* {
          yield GameResultsState.error(errorMessage);
        },
        additionalProgress: () async* {
          yield const GameResultsState.additionalLoading();
        },
        additionalSuccess: (response) async* {
          yield* _renderGameResults(response);
        },
        additionalError: (message) async* {},
      );
    }
  }

  // ignore: missing_return
  Future<SinglePlayerGameResultPagedResponse> _getFetchCall(int page, GameResultType type) {
    switch (type) {
      case GameResultType.all:
        return _gameResultRepository.getAllGameResults(page);
      case GameResultType.user:
        return _gameResultRepository.getUserGameResults(page);
    }
  }

  Stream<GameResultsState> _renderGameResults(
      SinglePlayerGameResultPagedResponse response,) async* {
    onPageFetched(
      page: response.pageNumber,
      hasReachedEnd: response.lastPage,
      items: response.content,
    );
    yield GameResultsState.renderGameResults(
      gameResults: getAllItems(),
      hasReachedEnd: response.lastPage,
    );
  }

  Stream<GameResultsState> _mapGameResultTappedEvent(GameResultTapped event,) async* {}
}
