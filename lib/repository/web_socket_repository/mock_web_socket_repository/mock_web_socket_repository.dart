import 'dart:async';

import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';

class MockWebSocketRepository<T> extends WebSocketRepository<T> {
  MockWebSocketRepository(
    String url,
    bool tryToReconnect, {
    this.onAdd,
  }) : super(url, tryToReconnect);
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
  Stream<T> get stream => throw UnimplementedError();

  @override
  Future<void> close() async {
    await _dataStreamController.close();
  }
}
