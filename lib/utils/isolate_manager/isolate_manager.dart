import 'package:nant_client/repository/resource_repository.dart';

/// Helper for multi thread tasks
abstract class IsolateManager extends ResourceRepository {
  /// Encode json in isolate
  Future<String> jsonEncode(Object object);

  /// Decode json in isolate
  Future<dynamic> jsonDecode(String string);
}
