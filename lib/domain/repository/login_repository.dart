import 'package:tictactoe/domain/entity/login_request/login_request.dart';
import 'package:tictactoe/domain/entity/login_response/login_response.dart';

abstract class LoginRepository {
  Future<LoginResponse> login(LoginRequest request);
}
