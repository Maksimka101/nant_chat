import 'dart:convert' as convert;

import 'package:nant_client/utils/isolate_manager/isolate_manager.dart';
import 'package:worker_manager/worker_manager.dart';

class ExecutorIsolateManager extends IsolateManager {
  Executor _executor;
  var _initialized = false;

  @override
  Future<void> initialize() async {
    if (!_initialized) {
      _executor = Executor();
      await _executor.warmUp();
      _initialized = true;
    }
    return super.initialize();
  }

  @override
  Future jsonDecode(String string) async {
    assert(_executor != null, "Don't forget to call initialize");
    return _executor.execute(arg1: string, fun1: convert.jsonDecode);
  }

  @override
  Future<String> jsonEncode(Object object) async {
    assert(_executor != null, "Don't forget to call initialize");
    return _executor.execute(arg1: object, fun1: convert.jsonEncode);
  }
}
