library test_state;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/raw_key_string.dart';

part 'test_state.freezed.dart';

@freezed
abstract class TestState with _$TestState {
  const factory TestState.progress() = _Progress;

  const factory TestState.success(String result) = _Success;

  const factory TestState.error(RawKeyString errorMessage) = _Error;
}
