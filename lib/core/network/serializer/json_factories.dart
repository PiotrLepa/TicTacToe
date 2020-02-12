import 'package:tictactoe/core/network/model/token/token_response.dart';

import '../model/post.dart';

const jsonFactories = {
  Post: Post.fromJsonFactory,
  TokenResponse: TokenResponse.fromJsonFactory,
};
