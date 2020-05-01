import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/common/serialization/model_decoder.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/data/model/multiplayer_game_response/multiplayer_game_response_model.dart';

@lazySingleton
class StompService {
  final ModelDecoder _modelDecoder;

  StompService(
    this._modelDecoder,
  );

  Stream<MultiplayerGameResponseModel> getMultiplayerGame(int gameId) {
    final _controller = StreamController<MultiplayerGameResponseModel>();
    _connectToSocket(
      onConnected: (client) {
        client.subscribe(
          destination: '/game-status/$gameId',
          callback: (frame) {
            logger.d("game status: " + frame.body);
            final model = _modelDecoder
                .decode<MultiplayerGameResponseModel>(jsonDecode(frame.body));
            _controller.add(model);
          },
        );
      },
      onError: () {},
    );
    return _controller.stream;
  }

  StompClient _connectToSocket({
    @required Function(StompClient) onConnected,
    @required VoidCallback onError,
  }) =>
      StompClient(
        config: StompConfig(
          url: webSocketUrl + "/multiplayer-socket",
          onConnect: (client, frame) {
            logger.d("socket connected" + frame.body);
            onConnected(client);
          },
          onStompError: (error) {
            logger.d("stomp error" + error.toString());
            onError();
          },
          onDebugMessage: (message) {
            logger.d("onDebugMessage" + message);
          },
          onWebSocketDone: () {
            logger.d("onWebSocketDone");
          },
          onDisconnect: (stompFrame) {
            logger.d("onDisconnect");
          },
          onUnhandledFrame: (stompFrame) {
            logger.d("onUnhandledFrame");
          },
          onUnhandledMessage: (stompFrame) {
            logger.d("onUnhandledMessage");
          },
          onUnhandledReceipt: (stompFrame) {
            logger.d("onUnhandledReceipt");
          },
          onWebSocketError: (stompFrame) {
            logger.d("onWebSocketError");
          },
        ),
      )..activate();
}
