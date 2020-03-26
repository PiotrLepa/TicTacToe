library refresh_token_request_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/data/serializer/serializable.dart';

part 'refresh_token_request_model.freezed.dart';
part 'refresh_token_request_model.g.dart';

@freezed
abstract class RefreshTokenRequestModel
    with _$RefreshTokenRequestModel
    implements Serializable {
  const factory RefreshTokenRequestModel({
    @JsonKey(name: "refresh_token") @required String refreshToken,
    @JsonKey(name: "grant_type") @required String grantType,
  }) = _RefreshTokenRequestModel;

  factory RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestModelFromJson(json);

  Map<String, dynamic> toJson();
}
