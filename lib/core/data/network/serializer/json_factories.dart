import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/registration_response/registration_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_response/single_player_game_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/content/single_player_game_result_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/single_player_game_result_paged_response_model.dart';

const Map<Type, Object Function(Map<String, dynamic> json)> jsonFactories = {
  ErrorResponse: ErrorResponse.fromJsonFactory,
  GameMoveModel: GameMoveModel.fromJsonFactory,
  SinglePlayerGameResponseModel: SinglePlayerGameResponseModel.fromJsonFactory,
  LoginResponseModel: LoginResponseModel.fromJsonFactory,
  RegistrationResponseModel: RegistrationResponseModel.fromJsonFactory,
  SinglePlayerGameResultPagedResponseModel:
      SinglePlayerGameResultPagedResponseModel.fromJsonFactory,
  SinglePlayerGameResultResponseModel:
      SinglePlayerGameResultResponseModel.fromJsonFactory,
};
