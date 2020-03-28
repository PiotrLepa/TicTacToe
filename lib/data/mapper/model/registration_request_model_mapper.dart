import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/model_mapper.dart';
import 'package:tictactoe/data/model/registration_request/registration_request_model.dart';
import 'package:tictactoe/domain/entity/reqistration_request/registration_request.dart';

@lazySingleton
class RegistrationRequestModelMapper
    implements ModelMapper<RegistrationRequestModel, RegistrationRequest> {
  @override
  RegistrationRequestModel toModel(RegistrationRequest entity) =>
      RegistrationRequestModel(
        email: entity.email,
        username: entity.username,
        password: entity.password,
        repeatedPassword: entity.repeatedPassword,
      );
}
