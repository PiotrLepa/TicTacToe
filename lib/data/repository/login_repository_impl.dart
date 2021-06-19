import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/login_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/login_request_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/login_request/login_request.dart';
import 'package:tictactoe/domain/entity/login_response/login_response.dart';
import 'package:tictactoe/domain/repository/login_repository.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final NetworkService _service;
  final LoginRequestModelMapper _loginRequestModelMapper;
  final LoginResponseEntityMapper _loginResponseEntityMapper;

  LoginRepositoryImpl(
    this._service,
    this._loginRequestModelMapper,
    this._loginResponseEntityMapper,
  );

  @override
  Future<LoginResponse> login(LoginRequest request) => _service
      .login(_loginRequestModelMapper.toModel(request))
      .then(_loginResponseEntityMapper.toEntity)
      .handleNetworkError();
}
