import 'dart:async';
import 'dart:convert';

import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketChannelRepository<T> extends WebSocketRepository<T> {
  WebSocketChannelRepository(String url)
      : _webSocketChannel = WebSocketChannel.connect(Uri.parse(url)),
        super(url) {
    _webSocketDataStream = _webSocketChannel.stream.asBroadcastStream();
  }

  final WebSocketChannel _webSocketChannel;
  Stream<dynamic> _webSocketDataStream;

  @override
  void add(T data) {
    dynamic mappedData = data;
    if (data is Map) {
      mappedData = jsonEncode(data);
    }
    for (final interceptor in interceptors) {
      interceptor.onAdd?.call(data);
    }
    _webSocketChannel.sink.add(mappedData);
  }

  @override
  StreamSubscription<T> listen(
    void Function(T event) onData, {
    Function onError,
    void Function() onDone,
    bool cancelOnError,
  }) {
    return _webSocketDataStream.map<T>((event) {
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
        onData(data);
      },
      onDone: onDone,
      onError: onError,
      cancelOnError: cancelOnError,
    );
  }

  @override
  Future<void> close() async {
    await _webSocketChannel.sink.close();
  }
}
