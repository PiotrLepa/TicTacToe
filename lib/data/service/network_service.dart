import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/common/enum_helper.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/data/network/serializer/response_converter.dart';
import 'package:tictactoe/core/data/network/service/base_network_service.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/common/difficulty_level/difficulty_level_model.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/multiplayer_game_created_response/multiplayer_game_created_response_model.dart';
import 'package:tictactoe/data/model/multiplayer_game_response/multiplayer_game_response_model.dart';
import 'package:tictactoe/data/model/registration_request/registration_request_model.dart';
import 'package:tictactoe/data/model/single_player_game_response/single_player_game_response_model.dart';
import 'package:tictactoe/data/model/single_player_game_result_response/single_player_game_result_paged_response_model.dart';
import 'package:tictactoe/data/model/user_profile_response/user_profile_response_model.dart';

@lazySingleton
class NetworkService extends BaseNetworkService {
  NetworkService(
    @Named(defaultNetworkClient) Dio dio,
    ResponseConverter responseConverter,
  ) : super(dio, responseConverter);

  Future<LoginResponseModel> login(
    LoginRequestModel request,
  ) =>
      post(
        '/oauth/token',
        data: request,
        contentType: Headers.formUrlEncodedContentType,
        headers: <String, dynamic>{authorizationHeader: basicKey},
      );

  Future<void> register(
    RegistrationRequestModel request,
  ) =>
      post(
        '/user/register',
        data: request,
      );

  Future<UserProfileResponseModel> getUserProfile() => get(
    '/user/profile',
        secured: true,
      );

  Future<SinglePlayerGameResponseModel> singlePlayerCreateGame(
    DifficultyLevelModel difficultyLevel,
  ) =>
      post(
        '/single-player/create',
        params: <String, dynamic>{
          'difficulty_level': enumToString(difficultyLevel),
        },
        secured: true,
      );

  Future<SinglePlayerGameResponseModel> singlePlayerSetMove(
    int gameId,
    int fieldIndex,
  ) =>
      put(
        '/single-player/$gameId/move/$fieldIndex',
        secured: true,
      );

  Future<MultiplayerGameCreatedResponseModel> multiplayerCreateGame(
    String opponentCode,
  ) =>
      post(
        '/multiplayer/create',
        params: <String, dynamic>{
          'opponent_code': opponentCode,
        },
        secured: true,
      );

  Future<void> multiplayerJoinToGame(
    int gameId,
  ) =>
      put(
        '/multiplayer/join',
        params: <String, dynamic>{
          'game_id': gameId.toString(),
        },
        secured: true,
      );

  Future<void> multiplayerSetMove(
    int gameId,
    int fieldIndex,
  ) =>
      put(
        '/multiplayer/$gameId/move/$fieldIndex',
        secured: true,
      );

  Future<MultiplayerGameResponseModel> multiplayerRestartGame(
    int gameId,
  ) =>
      put(
        '/multiplayer/$gameId/restart',
        secured: true,
      );

  Future<SinglePlayerGameResultPagedResponseModel> getUserGameResults(
    int page,
  ) =>
      get(
        '/game-result/single-player/user',
        params: <String, dynamic>{
          'page': page.toString(),
          'size': paginationElementsPerPage.toString(),
        },
        secured: true,
      );

  Future<SinglePlayerGameResultPagedResponseModel> getAllGameResults(
    int page,
  ) =>
      get(
        '/game-result/single-player/all',
        params: <String, dynamic>{
          'page': page.toString(),
          'size': paginationElementsPerPage.toString(),
        },
        secured: true,
      );
}
