import 'package:nant_client/repository/web_socket_repository/mock_web_socket_repository/mock_web_socket_repository.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_factory.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';

class MockWebSocketRepositoryFactory extends WebSocketRepositoryFactory {
  MockWebSocketRepositoryFactory({this.mockWebSocketRepository});

  final MockWebSocketRepository mockWebSocketRepository;

  @override
  WebSocketRepository<T> createRepository<T>({String url}) {
    return mockWebSocketRepository as WebSocketRepository<T> ?? MockWebSocketRepository<T>(url, false);
  }
}
