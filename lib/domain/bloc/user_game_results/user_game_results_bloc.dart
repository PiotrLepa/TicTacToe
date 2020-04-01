import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';
import 'package:tictactoe/domain/repository/game_result_repository.dart';

part 'user_game_results_bloc.freezed.dart';
part 'user_game_results_event.dart';
part 'user_game_results_state.dart';

@injectable
class UserGameResultsBloc
    extends Bloc<UserGameResultsEvent, UserGameResultsState> {
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
    if (event.isLastPage) {
      return;
    }
    yield* _fetchUserGameResults(event.currentPage + 1);
  }

  Stream<UserGameResultsState> _fetchUserGameResults(int page) async* {
    final request = fetch(_gameResultRepository.getUserGameResults(page));
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
//          yield UserGameResultsState.loading();
        },
        success: (response) async* {
          yield UserGameResultsState.renderGameResults(
            currentPage: response.pageNumber,
            isLastPage: response.lastPage,
            gameResults: response.content,
          );
        },
        error: (errorMessage) async* {
          yield UserGameResultsState.error(errorMessage);
        },
      );
    }
  }

  Stream<UserGameResultsState> _mapGameResultTappedEvent(
    GameResultTapped event,
  ) async* {}
}
