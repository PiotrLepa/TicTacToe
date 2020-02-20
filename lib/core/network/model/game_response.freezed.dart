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
  int get endDate;

  GameResponse copyWith({int gameId, int startDate, int endDate});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_GameResponse implements _GameResponse {
  const _$_GameResponse(this.gameId, this.startDate, this.endDate)
      : assert(gameId != null),
        assert(startDate != null),
        assert(endDate != null);

  factory _$_GameResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GameResponseFromJson(json);

  @override
  final int gameId;
  @override
  final int startDate;
  @override
  final int endDate;

  @override
  String toString() {
    return 'GameResponse(gameId: $gameId, startDate: $startDate, endDate: $endDate)';
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
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality().equals(other.endDate, endDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      gameId.hashCode ^
      startDate.hashCode ^
      endDate.hashCode;

  @override
  _$_GameResponse copyWith({
    Object gameId = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
  }) {
    assert(gameId != null);
    assert(startDate != null);
    assert(endDate != null);
    return _$_GameResponse(
      gameId == freezed ? this.gameId : gameId as int,
      startDate == freezed ? this.startDate : startDate as int,
      endDate == freezed ? this.endDate : endDate as int,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GameResponseToJson(this);
  }
}

abstract class _GameResponse implements GameResponse {
  const factory _GameResponse(int gameId, int startDate, int endDate) =
      _$_GameResponse;

  factory _GameResponse.fromJson(Map<String, dynamic> json) =
      _$_GameResponse.fromJson;

  @override
  int get gameId;
  @override
  int get startDate;
  @override
  int get endDate;

  @override
  _GameResponse copyWith({int gameId, int startDate, int endDate});
}
