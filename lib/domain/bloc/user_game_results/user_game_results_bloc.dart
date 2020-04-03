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
import 'package:tictactoe/domain/repository/game_result_repository.dart';

part 'user_game_results_bloc.freezed.dart';
part 'user_game_results_event.dart';
part 'user_game_results_state.dart';

@injectable
class UserGameResultsBloc
    extends Bloc<UserGameResultsEvent, UserGameResultsState>
    with PaginationHandler<GameResultResponse> {
  final GameResultRepository _gameResultRepository;

  UserGameResultsBloc(this._gameResultRepository);

  @override
  UserGameResultsState get initialState => UserGameResultsState.loading();

  @override
  Stream<UserGameResultsState> mapEventToState(
    UserGameResultsEvent event,
  ) async* {
    yield* event.map(
      screenStarted: _mapScreenStartedEvent,
      loadMoreItems: _mapLoadMoreItemsEvent,
      gameResultTapped: _mapGameResultTappedEvent,
    );
  }

  Stream<UserGameResultsState> _mapScreenStartedEvent(
    ScreenStarted event,
  ) async* {
    yield* _fetchUserGameResults(0);
  }

  Stream<UserGameResultsState> _mapLoadMoreItemsEvent(
      LoadMoreItems event) async* {
    if (hasMorePages()) {
      yield* _fetchUserGameResults(getNextPage());
    }
  }

  Stream<UserGameResultsState> _fetchUserGameResults(int page) async* {
    final fetchResult = pagedFetch(
      page: page,
      call: _gameResultRepository.getUserGameResults(page),
    );
    await for (final state in fetchResult) {
      yield* state.maybeWhen(
        initialProgress: () async* {
          yield UserGameResultsState.loading();
        },
        initialSuccess: (response) async* {
          yield* _renderGameResults(response);
        },
        initialError: (errorMessage) async* {
          yield UserGameResultsState.error(errorMessage);
        },
        additionalProgress: () async* {
          yield UserGameResultsState.additionalLoading();
        },
        additionalSuccess: (response) async* {
          yield* _renderGameResults(response);
        },
        orElse: () {},
      );
    }
  }

  Stream<UserGameResultsState> _renderGameResults(
      GameResultPagedResponse response,) async* {
    onPageFetched(
      page: response.pageNumber,
      hasReachedEnd: response.lastPage,
      items: response.content,
    );
    yield UserGameResultsState.renderGameResults(
      gameResults: getAllItems(),
      hasReachedEnd: response.lastPage,
    );
  }

  Stream<UserGameResultsState> _mapGameResultTappedEvent(
      GameResultTapped event,) async* {}
}
