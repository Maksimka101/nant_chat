import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:nant_client/utils/isolate_manager/isolate_manager.dart';

class ComputeIsolateManager implements IsolateManager {
  @override
  Future<void> dispose() async {}

  @override
  Future<void> initialize() async {}

  @override
  Future jsonDecode(String string) {
    return compute(_decodeJson, string);
  }

  static dynamic _decodeJson(String string) {
    return json.decode(string);
  }

  @override
  Future<String> jsonEncode(Object object) {
    return compute(_encodeJson, object);
  }

  static String _encodeJson(Object object) {
    return json.encode(object);
  }
}
