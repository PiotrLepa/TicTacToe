import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_result_response_entity_mapper.dart';
import 'package:tictactoe/data/model/game_result_response/game_result_paged_response_model.dart';
import 'package:tictactoe/domain/entity/game_result_response/game_result_paged_response.dart';

@lazySingleton
class GameResultPagedResponseEntityMapper
    implements
        EntityMapper<GameResultPagedResponse, GameResultPagedResponseModel> {
  final GameResultResponseEntityMapper _gameResultResponseEntityMapper;

  GameResultPagedResponseEntityMapper(this._gameResultResponseEntityMapper);

  @override
  GameResultPagedResponse toEntity(GameResultPagedResponseModel model) {
    return GameResultPagedResponse(
      content: KtList.from(
        model.content.map(_gameResultResponseEntityMapper.toEntity),
      ),
      pageNumber: model.number,
      lastPage: model.last,
    );
  }
}
