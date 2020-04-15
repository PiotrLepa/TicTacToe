library game_result_paged_response;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/game_result_response/content/game_result_response.dart';

part 'game_result_paged_response.freezed.dart';

@freezed
abstract class GameResultPagedResponse with _$GameResultPagedResponse {
  const factory GameResultPagedResponse({
    @required KtList<GameResultResponse> content,
    @required int pageNumber,
    @required bool lastPage,
  }) = _GameResultPagedResponse;
}
