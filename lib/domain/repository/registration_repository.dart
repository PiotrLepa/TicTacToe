import 'package:tictactoe/domain/entity/reqistration_request/registration_request.dart';

abstract class RegistrationRepository {
  Future<void> register(RegistrationRequest request);
}
