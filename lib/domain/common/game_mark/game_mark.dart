library game_mark;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_mark.freezed.dart';

@freezed
abstract class GameMark with _$GameMark {
  const factory GameMark.x() = _X;

  const factory GameMark.o() = _o;
}
