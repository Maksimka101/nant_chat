import 'package:flutter/foundation.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';

abstract class WebSocketRepositoryFactory {
  WebSocketRepository<T> createRepository<T>({@required String url});
}
