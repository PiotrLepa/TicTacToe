import 'package:tictactoe/data/model/game_response/game_response.dart';
import 'package:tictactoe/data/model/login_response/login_response.dart';

const jsonFactories = {
  LoginResponse: LoginResponse.fromJsonFactory,
  GameResponse: GameResponse.fromJsonFactory,
};
