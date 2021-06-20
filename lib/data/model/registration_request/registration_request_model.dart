import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/common/serialization/serializable.dart';

part 'registration_request_model.freezed.dart';
part 'registration_request_model.g.dart';

@freezed
class RegistrationRequestModel
    with _$RegistrationRequestModel
    implements Serializable {
  const factory RegistrationRequestModel({
    required String email,
    required String username,
    required String password,
    required String repeatedPassword,
  }) = _RegistrationRequestModel;

  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestModelFromJson(json);

  @override
  Map<String, dynamic> toJson();
}
