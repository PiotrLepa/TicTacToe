import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/domain/bloc/bloc_helper.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_response.dart';
import 'package:tictactoe/domain/repository/game_result_repository.dart';

part 'all_game_results_bloc.freezed.dart';

part 'all_game_results_event.dart';

part 'all_game_results_state.dart';

@injectable
class AllGameResultsBloc
    extends Bloc<AllGameResultsEvent, AllGameResultsState> {
  final GameResultRepository _gameResultRepository;

  AllGameResultsBloc(this._gameResultRepository);

  @override
  AllGameResultsState get initialState => AllGameResultsState.loading();

  @override
  Stream<AllGameResultsState> mapEventToState(
    AllGameResultsEvent event,
  ) async* {
    yield* event.map(
      screenStarted: _mapScreenStartedEvent,
      gameResultTapped: _mapGameResultTappedEvent,
    );
  }

  Stream<AllGameResultsState> _mapScreenStartedEvent(
    ScreenStarted event,
  ) async* {
    yield* _fetchAllGameResults();
  }

  Stream<AllGameResultsState> _fetchAllGameResults() async* {
    final request = fetch(_gameResultRepository.getAllGameResults());
    await for (final state in request) {
      yield* state.when(
        progress: () async* {
          yield AllGameResultsState.loading();
        },
        success: (response) async* {
          yield AllGameResultsState.renderGameResults(
            gameResults: response,
          );
        },
        error: (errorMessage) async* {
          yield AllGameResultsState.error(errorMessage);
        },
      );
    }
  }

  Stream<AllGameResultsState> _mapGameResultTappedEvent(
    GameResultTapped event,
  ) async* {}
}
