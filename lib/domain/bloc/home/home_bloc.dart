import 'package:auto_localized/auto_localized.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/storage/oauth_tokens_storage.dart';
import 'package:tictactoe/core/presentation/localization/strings.al.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final OauthTokensStorage _oauthTokensStorage;

  static final _pageTitles = [
    Strings.pageStartGame,
    Strings.pageGameResults,
    Strings.pageSettings,
  ];

  HomeBloc(this._oauthTokensStorage,) : super(
    HomeState.updatePage(
      pageTitle: _pageTitles[0],
      index: 0,
    ),
  );

  @override
  Stream<HomeState> mapEventToState(HomeEvent event,) async* {
    yield* event.map(
      appStarted: _mapAppStartedEvent,
      onBottomNavigationTapped: _mapOnBottomNavigationTappedEvent,
    );
  }

  Stream<HomeState> _mapAppStartedEvent(AppStarted event,) async* {
    final accessToken = await _oauthTokensStorage.accessToken;
    final refreshToken = await _oauthTokensStorage.refreshToken;

    if (accessToken == null || refreshToken == null) {
      _navigateToLogin();
    }
  }

  void _navigateToLogin() {
    // TODO
    // ExtendedNavigator.ofRouter<Router>().pushNamedAndRemoveUntil(
    //   Routes.startScreen,
    //   (route) => false,
    // );
  }

  Stream<HomeState> _mapOnBottomNavigationTappedEvent(
      OnBottomNavigationTapped event,) async* {
    yield HomeState.updatePage(
      pageTitle: _pageTitles[event.index],
      index: event.index,
    );
  }
}
