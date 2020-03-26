import 'package:tictactoe/core/data/model/error/error_response.dart';
import 'package:tictactoe/data/model/common/game_move/game_move_model.dart';
import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/registration_response/registration_response_model.dart';

const jsonFactories = {
  ErrorResponse: ErrorResponse.fromJsonFactory,
  GameMoveModel: GameMoveModel.fromJsonFactory,
  GameResponseModel: GameResponseModel.fromJsonFactory,
  LoginResponseModel: LoginResponseModel.fromJsonFactory,
  RegistrationResponseModel: RegistrationResponseModel.fromJsonFactory,
};
