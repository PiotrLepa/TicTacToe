import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/domain/entity/login_response/login_response.dart';

@lazySingleton
class LoginResponseEntityMapper
    implements EntityMapper<LoginResponse, LoginResponseModel> {
  @override
  LoginResponse toEntity(LoginResponseModel model) => LoginResponse(
        accessToken: model.accessToken,
        refreshToken: model.refreshToken,
      );
}
