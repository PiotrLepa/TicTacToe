import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/core/extension/iterable_extension.dart';
import 'package:tictactoe/data/mapper/entity/single_player_game_result_response_entity_mapper.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/single_player_game_result_paged_response_model.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/single_player_game_result_paged_response.dart';

@lazySingleton
class SinglePlayerGameResultPagedResponseEntityMapper
    implements
        EntityMapper<SinglePlayerGameResultPagedResponse,
            SinglePlayerGameResultPagedResponseModel> {
  final SinglePlayerGameResultResponseEntityMapper
      _gameResultResponseEntityMapper;

  SinglePlayerGameResultPagedResponseEntityMapper(
      this._gameResultResponseEntityMapper);

  @override
  SinglePlayerGameResultPagedResponse toEntity(
      SinglePlayerGameResultPagedResponseModel model) {
    return SinglePlayerGameResultPagedResponse(
      content: model.content
          .map(_gameResultResponseEntityMapper.toEntity)
          .toKtList(),
      pageNumber: model.number,
      lastPage: model.last,
    );
  }
}
