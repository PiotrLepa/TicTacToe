import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/mapper/entity/login_response_entity_mapper.dart';
import 'package:tictactoe/data/mapper/model/login_request_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/login_request/login_request.dart';
import 'package:tictactoe/domain/entity/login_response/login_response.dart';
import 'package:tictactoe/domain/repository/login_repository.dart';

@RegisterAs(LoginRepository)
@lazySingleton
class LoginRepositoryImpl extends NetworkRepository implements LoginRepository {
  final NetworkService _service;
  final LoginRequestModelMapper _loginRequestModelMapper;
  final LoginResponseEntityMapper _loginResponseEntityMapper;

  LoginRepositoryImpl(
    this._service,
    this._loginRequestModelMapper,
    this._loginResponseEntityMapper,
  );

  @override
  Future<LoginResponse> login(LoginRequest request) {
    final requestModel = _loginRequestModelMapper.toModel(request);
    return call(
      request: _service.login(requestModel),
      mapper: _loginResponseEntityMapper.toEntity,
    );
  }
}
