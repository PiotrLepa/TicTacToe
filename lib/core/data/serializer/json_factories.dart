import 'package:tictactoe/data/model/game_response/game_response.dart';
import 'package:tictactoe/data/model/login_response/login_response.dart';
import 'package:tictactoe/data/model/refresh_token_response/refresh_token_response.dart';

const jsonFactories = {
  LoginResponse: LoginResponse.fromJsonFactory,
  RefreshTokenResponse: RefreshTokenResponse.fromJsonFactory,
  GameResponse: GameResponse.fromJsonFactory,
};
