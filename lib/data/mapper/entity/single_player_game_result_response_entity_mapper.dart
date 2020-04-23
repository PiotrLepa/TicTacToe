import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/difficilty_level_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/game_mark_entity_mapper.dart';
import 'package:tictactoe/data/mapper/entity/single_player_game_status_entity_mapper.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/content/single_player_game_result_response_model.dart';
import 'package:tictactoe/domain/entity/single_player_game_result_response/content/single_player_game_result_response.dart';

@lazySingleton
class SinglePlayerGameResultResponseEntityMapper
    implements
        EntityMapper<SinglePlayerGameResultResponse,
            SinglePlayerGameResultResponseModel> {
  final SinglePlayerGameStatusEntityMapper _gameStatusEntityMapper;
  final DifficultyLevelEntityMapper _difficultyLevelEntityMapper;
  final GameMarkEntityMapper _gameMarkEntityMapper;

  SinglePlayerGameResultResponseEntityMapper(
    this._gameStatusEntityMapper,
    this._difficultyLevelEntityMapper,
    this._gameMarkEntityMapper,
  );

  @override
  SinglePlayerGameResultResponse toEntity(
          SinglePlayerGameResultResponseModel model) =>
      SinglePlayerGameResultResponse(
        gameId: model.gameId,
        status: _gameStatusEntityMapper.toEntity(model.status),
        difficultyLevel:
            _difficultyLevelEntityMapper.toEntity(model.difficultyLevel),
        playerMark: _gameMarkEntityMapper.toEntity(model.playerMark),
        computerMark: _gameMarkEntityMapper.toEntity(model.computerMark),
        startDate: model.startDate,
        endDate: model.endDate,
      );
}
