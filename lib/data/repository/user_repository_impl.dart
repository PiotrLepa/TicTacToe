import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/network_error_handler.dart';
import 'package:tictactoe/data/mapper/entity/user_profile_entity_mapper.dart';
import 'package:tictactoe/data/service/network_service.dart';
import 'package:tictactoe/domain/entity/user_profile_response/user_profile_response.dart';
import 'package:tictactoe/domain/repository/user_repository.dart';

@RegisterAs(UserRepository)
@lazySingleton
class UserRepositoryImpl implements UserRepository {
  final NetworkService _service;
  final UserProfileEntityMapper _userProfileEntityMapper;

  UserRepositoryImpl(
    this._service,
    this._userProfileEntityMapper,
  );

  @override
  Future<UserProfileResponse> getUserProfile() => _service
      .getUserProfile()
      .then(_userProfileEntityMapper.toEntity)
      .handleNetworkError();
}
