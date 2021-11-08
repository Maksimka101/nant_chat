import 'dart:convert' as convert;

import 'package:nant_client/utils/isolate_manager/isolate_manager.dart';
import 'package:worker_manager/worker_manager.dart';

class ExecutorIsolateManager extends IsolateManager {
  late Executor _executor;
  var _initialized = false;

  @override
  Future<void> initialize() async {
    if (!_initialized) {
      _executor = Executor();
      await _executor.warmUp(log: true);
      _initialized = true;
    }
    return super.initialize();
  }

  @override
  Future<dynamic> jsonDecode(String string) async {
    return _executor.execute(arg1: string, fun1: convert.jsonDecode);
  }

  @override
  Future<String> jsonEncode(Object object) async {
    return _executor.execute(arg1: object, fun1: convert.jsonEncode);
  }
}
