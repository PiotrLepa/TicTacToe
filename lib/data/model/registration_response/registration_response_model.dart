library registration_response_model;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response_model.freezed.dart';

part 'registration_response_model.g.dart';

@freezed
abstract class RegistrationResponseModel with _$RegistrationResponseModel {
  const factory RegistrationResponseModel({
    @required int id,
    @required String email,
    @required String username,
  }) = _RegistrationResponseModel;

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseModelFromJson(json);

  static const fromJsonFactory = _$RegistrationResponseModelFromJson;
}
