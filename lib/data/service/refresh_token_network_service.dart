import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/http.dart' as http;
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/core/injection/injection_names.dart';
import 'package:tictactoe/data/model/login_response/login_response_model.dart';
import 'package:tictactoe/data/model/refresh_token_request/refresh_token_request_model.dart';

part 'refresh_token_network_service.g.dart';

@lazySingleton
@RestApi()
abstract class RefreshTokenNetworkService {
  @factoryMethod
  factory RefreshTokenNetworkService(
    @Named(refreshTokenNetworkClient) Dio dio,
  ) = _RefreshTokenNetworkService;

  @POST("/oauth/token")
  @http.FormUrlEncoded()
  @http.Headers({
    authorizationHeader: basicKey,
  })
  Future<LoginResponseModel> refreshAccessToken(
    @Body() RefreshTokenRequestModel request,
  );
}
