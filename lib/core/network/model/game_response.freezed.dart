// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of game_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) {
  return _GameResponse.fromJson(json);
}

mixin _$GameResponse {
  int get gameId;
  int get startDate;
  int get endData;

  GameResponse copyWith({int gameId, int startDate, int endData});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_GameResponse implements _GameResponse {
  const _$_GameResponse(this.gameId, this.startDate, this.endData)
      : assert(gameId != null),
        assert(startDate != null),
        assert(endData != null);

  factory _$_GameResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GameResponseFromJson(json);

  @override
  final int gameId;
  @override
  final int startDate;
  @override
  final int endData;

  @override
  String toString() {
    return 'GameResponse(gameId: $gameId, startDate: $startDate, endData: $endData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameResponse &&
            (identical(other.gameId, gameId) ||
                const DeepCollectionEquality().equals(other.gameId, gameId)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endData, endData) ||
                const DeepCollectionEquality().equals(other.endData, endData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      gameId.hashCode ^
      startDate.hashCode ^
      endData.hashCode;

  @override
  _$_GameResponse copyWith({
    Object gameId = freezed,
    Object startDate = freezed,
    Object endData = freezed,
  }) {
    assert(gameId != null);
    assert(startDate != null);
    assert(endData != null);
    return _$_GameResponse(
      gameId == freezed ? this.gameId : gameId as int,
      startDate == freezed ? this.startDate : startDate as int,
      endData == freezed ? this.endData : endData as int,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameResponseToJson(this);
  }
}

abstract class _GameResponse implements GameResponse {
  const factory _GameResponse(int gameId, int startDate, int endData) =
      _$_GameResponse;

  factory _GameResponse.fromJson(Map<String, dynamic> json) =
      _$_GameResponse.fromJson;

  @override
  int get gameId;
  @override
  int get startDate;
  @override
  int get endData;

  @override
  _GameResponse copyWith({int gameId, int startDate, int endData});
}
