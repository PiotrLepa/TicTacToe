import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/model_mapper.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/domain/entity/login_request/login_request.dart';

@lazySingleton
class LoginRequestModelMapper
    implements ModelMapper<LoginRequestModel, LoginRequest> {
  @override
  LoginRequestModel toModel(LoginRequest entity) => LoginRequestModel(
        email: entity.email,
        password: entity.password,
        grantType: entity.grantType,
        deviceToken: entity.deviceToken,
      );
}
