import 'package:tictactoe/core/network/model/game_response.dart';
import 'package:tictactoe/core/network/model/post.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';

const jsonFactories = {
  Post: Post.fromJsonFactory,
  TokenResponse: TokenResponse.fromJsonFactory,
  GameResponse: GameResponse.fromJsonFactory,
};
