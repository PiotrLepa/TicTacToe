import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/content/single_player_game_result_response.dart';

part 'single_player_game_result_paged_response.freezed.dart';

@freezed
class SinglePlayerGameResultPagedResponse
    with _$SinglePlayerGameResultPagedResponse {
  const factory SinglePlayerGameResultPagedResponse({
    required KtList<SinglePlayerGameResultResponse> content,
    required int pageNumber,
    required bool lastPage,
  }) = _SinglePlayerGameResultPagedResponse;
}
