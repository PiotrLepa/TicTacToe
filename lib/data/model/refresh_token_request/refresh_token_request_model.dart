import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/common/serialization/serializable.dart';

part 'refresh_token_request_model.freezed.dart';
part 'refresh_token_request_model.g.dart';

@freezed
class RefreshTokenRequestModel
    with _$RefreshTokenRequestModel
    implements Serializable {
  const factory RefreshTokenRequestModel({
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'grant_type') required String grantType,
  }) = _RefreshTokenRequestModel;

  factory RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestModelFromJson(json);

  @override
  Map<String, dynamic> toJson();
}
