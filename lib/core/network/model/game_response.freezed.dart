// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of game_response;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

GameResponse _$GameResponseFromJson(Map<String, dynamic> json) {
  return _GameResponse.fromJson(json);
}

abstract class _$GameResponse {
  int get gameId;
  int get startDate;
  int get endData;

  GameResponse copyWith({int gameId, int startDate, int endData});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_GameResponse with DiagnosticableTreeMixin implements _GameResponse {
  const _$_GameResponse(this.gameId, this.startDate, this.endData);

  factory _$_GameResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GameResponseFromJson(json);

  @override
  final int gameId;
  @override
  final int startDate;
  @override
  final int endData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'GameResponse(gameId: $gameId, startDate: $startDate, endData: $endData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameResponse'))
      ..add(DiagnosticsProperty('gameId', gameId))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endData', endData));
  }

  @override
  bool operator ==(dynamic other) {
    return other is _GameResponse &&
        (identical(other.gameId, gameId) || other.gameId == gameId) &&
        (identical(other.startDate, startDate) ||
            other.startDate == startDate) &&
        (identical(other.endData, endData) || other.endData == endData);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      gameId.hashCode ^
      startDate.hashCode ^
      endData.hashCode;

  @override
  _$_GameResponse copyWith({
    Object gameId = immutable,
    Object startDate = immutable,
    Object endData = immutable,
  }) {
    return _$_GameResponse(
      gameId == immutable ? this.gameId : gameId as int,
      startDate == immutable ? this.startDate : startDate as int,
      endData == immutable ? this.endData : endData as int,
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
