library call_state;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tictactoe/core/network/exception/api_exception.dart';

part 'call_state.freezed.dart';

@freezed
abstract class CallState<T> with _$CallState {
  const factory CallState.progress() = _Progress<T>;

  const factory CallState.success(T result) = _Success<T>;

  const factory CallState.error(ApiException ex) = _Error<T>;
}
