import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/core/domain/bloc/pagination_handler.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_paged_response.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_type.dart';
import 'package:tictactoe/domain/repository/game_result_repository.dart';

part 'game_results_bloc.freezed.dart';

part 'game_results_event.dart';

part 'game_results_state.dart';

@injectable
class GameResultsBloc extends Bloc<GameResultsEvent, GameResultsState>
    with PaginationHandler<GameResultResponse> {
  final GameResultRepository _gameResultRepository;

  GameResultsBloc(this._gameResultRepository);

  @override
  GameResultsState get initialState => GameResultsState.loading();

  @override
  Stream<GameResultsState> mapEventToState(
    GameResultsEvent event,
  ) async* {
    yield* event.map(
      screenStarted: _mapScreenStartedEvent,
      loadMoreItems: _mapLoadMoreItemsEvent,
      gameResultTapped: _mapGameResultTappedEvent,
    );
  }

  Stream<GameResultsState> _mapScreenStartedEvent(ScreenStarted event,) async* {
    yield* _fetchGameResults(0, event.type);
  }

  Stream<GameResultsState> _mapLoadMoreItemsEvent(LoadMoreItems event) async* {
    if (hasMorePages()) {
      yield* _fetchGameResults(getNextPage(), event.type);
    }
  }

  Stream<GameResultsState> _fetchGameResults(int page,
      GameResultType type,) async* {
    final fetchResult = pagedFetch(
      page: page,
      call: _getFetchCall(page, type),
    );
    await for (final state in fetchResult) {
      yield* state.maybeWhen(
        initialProgress: () async* {
          yield GameResultsState.loading();
        },
        initialSuccess: (response) async* {
          yield* _renderGameResults(response);
        },
        initialError: (errorMessage) async* {
          yield GameResultsState.error(errorMessage);
        },
        additionalProgress: () async* {
          yield GameResultsState.additionalLoading();
        },
        additionalSuccess: (response) async* {
          yield* _renderGameResults(response);
        },
        orElse: () {},
      );
    }
  }

  Future<GameResultPagedResponse> _getFetchCall(int page, GameResultType type) {
    switch (type) {
      case GameResultType.all:
        return _gameResultRepository.getAllGameResults(page);
      case GameResultType.user:
        return _gameResultRepository.getUserGameResults(page);
        break;
    }
  }

  Stream<GameResultsState> _renderGameResults(
      GameResultPagedResponse response,) async* {
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

  Stream<GameResultsState> _mapGameResultTappedEvent(
      GameResultTapped event,) async* {}
}
