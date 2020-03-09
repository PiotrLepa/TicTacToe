import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';

const jsonFactories = {
  LoginRequestModel: LoginRequestModel.fromJsonFactory,
  LoginResponseModel: LoginResponseModel.fromJsonFactory,
  RefreshTokenRequestModel: RefreshTokenRequestModel.fromJsonFactory,
  DifficultyLevelModel: DifficultyLevelModel.fromJsonFactory,
  GameResponseModel: GameResponseModel.fromJsonFactory,
};
