import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/raw_key_string.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/presentation/router/router.gr.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final OauthTokensStorage _oauthTokensStorage;

  final pageTitles = [
    KeyString("pageStartGame"),
    KeyString("pageGameResults"),
    KeyString("pageSettings"),
  ];

  HomeBloc(this._oauthTokensStorage);

  @override
  HomeState get initialState => HomeState.updatePage(
        pageTitle: pageTitles[0],
        index: 0,
      );

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      appStarted: mapAppStartedEvent,
      onBottomNavigationTapped: mapEventToState,
    );
  }

  Stream<HomeState> mapAppStartedEvent(AppStarted event) async* {
    final accessToken = await _oauthTokensStorage.accessToken;
    final refreshToken = await _oauthTokensStorage.refreshToken;

    if (accessToken == null || refreshToken == null) {
      _navigateToLogin();
    }
  }

  void _navigateToLogin() {
    ExtendedNavigator.ofRouter<Router>().pushNamedAndRemoveUntil(
      Routes.loginScreen,
      (route) => false,
    );
  }

  Stream<HomeState> mapUpdatePageEvent(OnBottomNavigationTapped event) async* {
    yield HomeState.updatePage(
      pageTitle: pageTitles[event.index],
      index: event.index,
    );
  }
}