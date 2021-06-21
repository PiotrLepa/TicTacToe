import 'dart:async';

import 'package:injectable/injectable.dart';

@lazySingleton
class SessionExpirationHandler {
  final _controller = StreamController<void>();

  Stream<void> get stream => _controller.stream;

  void sessionExpired() {
    _controller.add(null);
  }
}
