import 'package:auto_localized/auto_localized.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'call_state.freezed.dart';

@freezed
class CallState<T> with _$CallState<T> {
  const factory CallState.progress() = Progress<T>;

  const factory CallState.success(T result) = Success<T>;

  const factory CallState.error(PlainLocalizedString errorMessage) = Error<T>;
}
