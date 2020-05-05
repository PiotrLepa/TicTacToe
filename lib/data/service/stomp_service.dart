import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:tictactoe/core/common/logger/logger.dart';
import 'package:tictactoe/core/common/serialization/model_decoder.dart';
import 'package:tictactoe/core/data/network/network_constant.dart';
import 'package:tictactoe/data/model/multiplayer_game_response/multiplayer_game_response_model.dart';

@lazySingleton
class StompService {
  static final _multiplayerSocket = webSocketUrl + "/multiplayer-socket";
  final ModelDecoder _modelDecoder;

  StompService(
    this._modelDecoder,
  );

  Stream<MultiplayerGameResponseModel> getMultiplayerGame(int gameId) {
    final _controller = StreamController<MultiplayerGameResponseModel>();
    _connectToSocket().then((client) {
      _pingPeriodicallyToSocket(client);
      client.subscribe(
        destination: '/game-status/$gameId',
        callback: (frame) {
          logger.d("game status: " + frame.body);
          final model = _modelDecoder
              .decode<MultiplayerGameResponseModel>(jsonDecode(frame.body));
          _controller.add(model);
        },
      );
    });
    return _controller.stream;
  }

  Future<StompClient> _connectToSocket() {
    final completer = Completer<StompClient>();
    StompClient(
      config: StompConfig(
        url: _multiplayerSocket,
        onConnect: (client, frame) {
          completer.complete(client);
        },
      ),
    ).activate();

    return completer.future;
  }

  void _pingPeriodicallyToSocket(StompClient client) {
    // client loses connection after 1 minute of inactivity
    // so we need to periodically send ping to web socket to keep it alive
    Timer.periodic(Duration(seconds: 30), (timer) {
      client.send(
        destination: _multiplayerSocket,
        body: 'Ping $_multiplayerSocket',
      );
    });
  }
}
