import 'dart:async';
import 'dart:convert';

import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketChannelRepository<T> extends WebSocketRepository<T> {
  WebSocketChannelRepository(String? url, {required bool tryToRestoreConnection})
      : super(url, tryToRestoreConnection: tryToRestoreConnection) {
    _connect();
  }

  WebSocketChannel? _webSocketChannel;
  final StreamController<T> _webSocketDataController = StreamController<T>.broadcast();
  static const _retryDuration = Duration(seconds: 4);

  @override
  Stream<T> get stream => _webSocketDataController.stream;

  @override
  void add(T data) {
    dynamic mappedData = data;
    if (data is Map) {
      mappedData = jsonEncode(data);
    }
    for (final interceptor in interceptors) {
      interceptor.onAdd?.call(data);
    }
    _webSocketChannel?.sink.add(mappedData);
  }

  void _connect() {
    _webSocketChannel?.sink.close();
    _webSocketChannel = WebSocketChannel.connect(Uri.parse(url!));

    _listenForWebSocket();
  }

  void _listenForWebSocket() {
    _webSocketChannel?.stream.map<T>((event) {
      if (T == Map && event is String) {
        // convert string from server to json
        return jsonDecode(event) as T;
      } else {
        // just convert
        return event as T;
      }
    }).listen(
      (data) {
        for (final interceptor in interceptors) {
          interceptor.onReceive?.call(data);
        }
        _webSocketDataController.add(data);
      },
      onError: (e) async {},
      onDone: () async {
        if (tryToRestoreConnection) {
          await Future.delayed(_retryDuration);
          _connect();
        }
      },
    );
  }

  @override
  Future<void> close() async {
    await _webSocketChannel?.sink.close();
    await _webSocketDataController.close();
  }
}
