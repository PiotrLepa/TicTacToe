import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response_model.freezed.dart';
part 'user_profile_response_model.g.dart';

@freezed
class UserProfileResponseModel with _$UserProfileResponseModel {
  const factory UserProfileResponseModel({
    required String email,
    required String username,
    required String playerCode,
  }) = _UserProfileResponseModel;

  factory UserProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseModelFromJson(json);

  static const fromJsonFactory = _$UserProfileResponseModelFromJson;
}
