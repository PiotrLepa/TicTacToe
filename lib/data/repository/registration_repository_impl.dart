import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/repository/network_repository.dart';
import 'package:tictactoe/data/mapper/model/registration_request_model_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/reqistration_request/registration_request.dart';
import 'package:tictactoe/domain/repository/registration_repository.dart';

@RegisterAs(RegistrationRepository)
@lazySingleton
class RegistrationRepositoryImpl extends NetworkRepository
    implements RegistrationRepository {
  final NetworkService _service;
  final RegistrationRequestModelMapper _registrationRequestModelMapper;

  RegistrationRepositoryImpl(
    this._service,
    this._registrationRequestModelMapper,
  );

  @override
  Future<void> register(RegistrationRequest request) {
    final requestModel = _registrationRequestModelMapper.toModel(request);
    return call(
      request: _service.register(requestModel),
    );
  }
}
