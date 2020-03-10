// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NetworkService implements NetworkService {
  _NetworkService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  createGame(difficultyLevel) async {
    ArgumentError.checkNotNull(difficultyLevel, 'difficultyLevel');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'difficulty_level': difficultyLevel
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/game/create',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{'secured': 'secured'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = GameResponseModel.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  login(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/oauth/token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{
              'authorization': 'Basic dGljdGFjdG9lOnRpY3RhY3RvZVNlY3JldA=='
            },
            extra: _extra,
            contentType: 'application/x-www-form-urlencoded',
            baseUrl: baseUrl),
        data: _data);
    final value = LoginResponseModel.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getGames() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<List<dynamic>> _result = await _dio.request('/game/results',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{'secured': 'secured'},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) =>
            GameResponseModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return Future.value(value);
  }
}
