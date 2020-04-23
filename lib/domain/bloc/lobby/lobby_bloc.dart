import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'lobby_bloc.freezed.dart';

part 'lobby_event.dart';

part 'lobby_state.dart';

@injectable
class LobbyBloc extends Bloc<LobbyEvent, LobbyState> {
  @override
  LobbyState get initialState => LobbyState.nothing();

  @override
  Stream<LobbyState> mapEventToState(LobbyEvent event) async* {}
}
