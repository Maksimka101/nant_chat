import 'dart:convert' as convert;

import 'package:nant_client/utils/isolate_manager/isolate_manager.dart';

class BlankIsolateManager extends IsolateManager {
  @override
  Future jsonDecode(String string) async {
    return convert.jsonDecode(string);
  }

  @override
  Future<String> jsonEncode(Object object) async {
    return convert.jsonEncode(object);
  }
}
