import 'package:tictactoe/domain/entity/registration_request/registration_request.dart';

abstract class RegistrationRepository {
  Future<void> register(RegistrationRequest request);
}
