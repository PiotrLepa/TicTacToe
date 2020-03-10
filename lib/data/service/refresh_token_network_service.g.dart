// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_network_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RefreshTokenNetworkService implements RefreshTokenNetworkService {
  _RefreshTokenNetworkService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  refreshAccessToken(request) async {
    ArgumentError.checkNotNull(request, 'request');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request?.toJson() ?? <String, dynamic>{});
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
}
