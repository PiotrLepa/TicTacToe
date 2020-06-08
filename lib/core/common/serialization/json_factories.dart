import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/data/model/game_invitation/game_invitation_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/multiplayer_game_created_response/multiplayer_game_created_response_model.dart';
import 'package:tictactoe/data/model/multiplayer_game_response/multiplayer_game_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_response/single_player_game_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/content/single_player_game_result_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/single_player_game_result_paged_response_model.dart';
import 'package:tictactoe/data/model/user_profile_response/user_profile_response_model.dart';

const Map<Type, Object Function(Map<String, dynamic> json)> jsonFactories = {
  ErrorResponse: ErrorResponse.fromJsonFactory,
  GameMoveModel: GameMoveModel.fromJsonFactory,
  SinglePlayerGameResponseModel: SinglePlayerGameResponseModel.fromJsonFactory,
  LoginResponseModel: LoginResponseModel.fromJsonFactory,
  SinglePlayerGameResultPagedResponseModel:
      SinglePlayerGameResultPagedResponseModel.fromJsonFactory,
  SinglePlayerGameResultResponseModel:
      SinglePlayerGameResultResponseModel.fromJsonFactory,
  GameInvitationModel: GameInvitationModel.fromJsonFactory,
  MultiplayerGameResponseModel: MultiplayerGameResponseModel.fromJsonFactory,
  MultiplayerGameCreatedResponseModel:
      MultiplayerGameCreatedResponseModel.fromJsonFactory,
  UserProfileResponseModel: UserProfileResponseModel.fromJsonFactory,
};
