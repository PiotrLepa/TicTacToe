library user_profile_response;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response.freezed.dart';

@freezed
abstract class UserProfileResponse with _$UserProfileResponse {
  const factory UserProfileResponse({
    @required String email,
    @required String username,
    @required String playerCode,
  }) = _UserProfileResponse;
}
