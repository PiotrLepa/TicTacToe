import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/common/serialization/model_decoder.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/data/model/multiplayer_game_response/multiplayer_game_response_model.dart';

@lazySingleton
class StompService {
  static final _multiplayerSocket = '$webSocketUrl/multiplayer-socket';
  final ModelDecoder _modelDecoder;

  StompService(
    this._modelDecoder,
  );

  Stream<MultiplayerGameResponseModel> getMultiplayerGame(
      String socketDestination) {
    final _controller = StreamController<MultiplayerGameResponseModel>();
    _connectToSocket().then((client) {
      _pingSocketPeriodically(client);
      client.subscribe(
        destination: '/game-status/$socketDestination',
        callback: (frame) => _controller.add(_decodeModel(frame)),
      );
    });
    return _controller.stream;
  }

  Future<StompClient> _connectToSocket() {
    final completer = Completer<StompClient>();
    late StompClient client;
    client = StompClient(
      config: StompConfig(
        url: _multiplayerSocket,
        onConnect: (frame) {
          completer.complete(client);
        },
      ),
    )..activate();

    return completer.future;
  }

  MultiplayerGameResponseModel _decodeModel(StompFrame frame) {
    final body = frame.body!;
    logger.d('game status: $body');
    return _modelDecoder.decode<MultiplayerGameResponseModel>(jsonDecode(body))
        as MultiplayerGameResponseModel;
  }

  void _pingSocketPeriodically(StompClient client) {
    // client loses connection after 1 minute of inactivity
    // so we need to periodically send ping to web socket to keep it alive
    Timer.periodic(const Duration(seconds: 30), (timer) {
      client.send(
        destination: _multiplayerSocket,
        body: 'Ping $_multiplayerSocket',
      );
    });
  }
}
