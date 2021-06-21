import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/data/network/session_expiration_handler.dart';

part 'session_bloc.freezed.dart';

part 'session_event.dart';

part 'session_state.dart';

@injectable
class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final SessionExpirationHandler _sessionExpirationHandler;

  SessionBloc(
    this._sessionExpirationHandler,
  ) : super(const SessionState.nothing()) {
    _sessionExpirationHandler.stream.listen((event) {
      add(const SessionEvent.sessionExpired());
    });
  }

  @override
  Stream<SessionState> mapEventToState(SessionEvent event) async* {
    if (event is SessionExpired) {
      yield* _mapScreenStartedEvent(event);
    }
  }

  Stream<SessionState> _mapScreenStartedEvent(
    SessionExpired event,
  ) async* {
    yield const SessionState.navigateToStart();
  }
}
