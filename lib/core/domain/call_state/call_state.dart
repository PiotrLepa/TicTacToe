import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';

part 'call_state.freezed.dart';

@freezed
class CallState<T> with _$CallState<T> {
  const factory CallState.progress() = Progress<T>;

  const factory CallState.success(T? result) = Success<T>;

  const factory CallState.error(RawKeyString errorMessage) = Error<T>;
}
