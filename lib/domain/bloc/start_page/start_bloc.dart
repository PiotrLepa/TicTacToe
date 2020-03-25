import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/presentation/router/router.gr.dart';

part 'start_bloc.freezed.dart';

part 'start_event.dart';

part 'start_state.dart';

@injectable
class StartBloc extends Bloc<StartEvent, StartState> {
  @override
  StartState get initialState => StartState.nothing();

  @override
  Stream<StartState> mapEventToState(
    StartEvent event,
  ) async* {
    yield* event.map(
      onRegistrationClicked: _onRegistrationClicked,
      onLoginClicked: _onLoginClicked,
    );
  }

  Stream<StartState> _onRegistrationClicked(
      OnRegistrationClicked event) async* {}

  Stream<StartState> _onLoginClicked(OnLoginClicked event) async* {
    ExtendedNavigator.ofRouter<Router>().pushLoginScreen();
  }
}
