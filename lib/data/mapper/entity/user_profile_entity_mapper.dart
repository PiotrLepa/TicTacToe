import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/mapper/entity_mapper.dart';
import 'package:tictactoe/data/model/user_profile_response/user_profile_response_model.dart';
import 'package:tictactoe/domain/entity/user_profile_response/user_profile_response.dart';

@lazySingleton
class UserProfileEntityMapper
    implements EntityMapper<UserProfileResponse, UserProfileResponseModel> {
  @override
  UserProfileResponse toEntity(UserProfileResponseModel model) =>
      UserProfileResponse(
        email: model.email,
        username: model.username,
        playerCode: model.playerCode,
      );
}
