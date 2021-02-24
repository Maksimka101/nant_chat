import 'dart:async';

import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';

class MockWebSocketRepository<T> extends WebSocketRepository<T> {
  MockWebSocketRepository(
    String url, {
    this.onAdd,
  }) : super(url);
  T Function(T data) onAdd;
  final _dataStreamController = StreamController<T>.broadcast();

  @override
  void add(T data) {
    final response = onAdd(data);
    if (response != null) {
      _dataStreamController.add(response);
    }
  }

  @override
  StreamSubscription<T> listen(
    void Function(T event) onData, {
    Function onError,
    void Function() onDone,
    bool cancelOnError,
  }) {
    return _dataStreamController.stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  @override
  Future<void> close() async {
    await _dataStreamController.close();
  }
}
