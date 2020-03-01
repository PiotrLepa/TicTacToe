import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_event.dart';
import 'package:tictactoe/presentation/bloc/bottom_navigation/bottom_navigation_state.dart';

@injectable
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  @override
  BottomNavigationState get initialState => BottomNavigationState.updatePage(0);

  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    yield BottomNavigationState.updatePage(event.index);
  }
}
