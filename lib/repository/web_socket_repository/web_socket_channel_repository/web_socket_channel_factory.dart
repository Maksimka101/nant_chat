import 'package:nant_client/repository/web_socket_repository/web_socket_channel_repository/web_socket_channel.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_factory.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';

class WebSocketChannelRepositoryFactory extends WebSocketRepositoryFactory {
  @override
  WebSocketRepository<T> createRepository<T>({required String url, bool tryToRestoreConnection = true}) {
    final repository = WebSocketChannelRepository<T>(url, tryToRestoreConnection: tryToRestoreConnection);
    return repository;
  }
}
