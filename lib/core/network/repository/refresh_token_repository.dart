import 'package:tictactoe/core/network/model/token/refresh_token_request/refresh_token_request.dart';
import 'package:tictactoe/core/network/model/token/token_response.dart';
import 'package:tictactoe/core/network/repository/network_repository.dart';
import 'package:tictactoe/core/network/service/network_service.dart';

class RefreshTokenRepository extends NetworkRepository {
  final _service = NetworkService();

  Future<TokenResponse> refreshAccessToken(RefreshTokenRequest request) =>
      call(_service.refreshAccessToken(request));
}
