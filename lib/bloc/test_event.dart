library test_event;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_event.freezed.dart';

@freezed
abstract class TestEvent with _$TestEvent {
  const factory TestEvent.login() = _Login;

  const factory TestEvent.fetchGames() = _FetchGames;

  const factory TestEvent.makeError() = _MakeError;
}
