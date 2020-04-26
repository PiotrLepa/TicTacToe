import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/common/multiplayer_player_type/multiplayer_player_type_model.dart';
import 'package:tictactoe/domain/entity/common/multiplayer_player_type/multiplayer_player_type.dart';

@lazySingleton
class MultiplayerPlayerTypeEntityMapper
    implements EntityMapper<MultiplayerPlayerType, MultiplayerPlayerTypeModel> {
  @override
  // ignore: missing_return
  MultiplayerPlayerType toEntity(MultiplayerPlayerTypeModel model) {
    switch (model) {
      case MultiplayerPlayerTypeModel.FIRST_PLAYER:
        return MultiplayerPlayerType.firstPlayer;
      case MultiplayerPlayerTypeModel.SECOND_PLAYER:
        return MultiplayerPlayerType.secondPlayer;
    }
  }
}
