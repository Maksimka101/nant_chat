import 'dart:async';
import 'dart:convert';

/// Wrapper for another web socket
/// Call [add] to push data to the WebSocket
/// Use [listen] to listen for incoming data
/// [T] is a data type of requests and responses
/// If [T] is Map (without generic) so data will be converted with [jsonDecode] and [jsonEncode]
///
/// You can add interceptor with [interceptors].add function
abstract class WebSocketRepository<T> extends Stream<T> {
  WebSocketRepository(this.url);

  final String url;
  final interceptors = <Interceptor<T>>[];

  void add(T data);

  Future<void> close();
}

class Interceptor<T> {
  Interceptor({this.onAdd, this.onReceive});

  final void Function(T data) onAdd;
  final void Function(T data) onReceive;
}
