import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';

const jsonFactories = {
  LoginResponseModel: LoginResponseModel.fromJsonFactory,
  GameResponseModel: GameResponseModel.fromJsonFactory,
};
