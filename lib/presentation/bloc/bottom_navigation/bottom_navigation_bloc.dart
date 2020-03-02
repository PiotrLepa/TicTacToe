import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/util/raw_key_string.dart';

part 'bottom_navigation_bloc.freezed.dart';
part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

@injectable
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  final pageTitles = [
    KeyString("pageStartGame"),
    KeyString("pageGameResults"),
    KeyString("pageSettings"),
  ];

  @override
  BottomNavigationState get initialState =>
      BottomNavigationState.updatePage(
        pageTitle: pageTitles[0],
        index: 0,
      );

  @override
  Stream<BottomNavigationState> mapEventToState(
      BottomNavigationEvent event,) async* {
    yield BottomNavigationState.updatePage(
      pageTitle: pageTitles[event.index],
      index: event.index,
    );
  }
}
