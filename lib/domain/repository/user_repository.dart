import 'package:tictactoe/domain/entity/user_profile_response/user_profile_response.dart';

abstract class UserRepository {
  Future<UserProfileResponse> getUserProfile();
}
