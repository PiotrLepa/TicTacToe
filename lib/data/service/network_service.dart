import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/http.dart' as http;
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/game_response/game_response_model.dart';
import 'package:tictactoe/data/model/login_request/login_request_model.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';

part 'network_service.g.dart';

@lazySingleton
@RestApi()
abstract class NetworkService {
  @factoryMethod
  factory NetworkService(
      @Named(defaultNetworkClient) Dio dio) = _NetworkService;

  @POST("/game/create")
  @http.Headers(securedHeader)
  Future<GameResponseModel> createGame(
      @Query("difficulty_level") String difficultyLevel,);

  @PUT("/game/{gameId}/move/{fieldIndex}")
  @http.Headers(securedHeader)
  Future<GameResponseModel> setMove(@Path("gameId") int gameId,
      @Path("fieldIndex") int fieldIndex,);

  @POST("/oauth/token")
  @http.FormUrlEncoded()
  @http.Headers({
    authorizationHeader: basicKey,
  })
  Future<LoginResponseModel> login(LoginRequestModel request);

  @GET("/game/results")
  @http.Headers(securedHeader)
  Future<List<GameResponseModel>> getGames();
}
