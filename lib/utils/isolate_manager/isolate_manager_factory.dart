import 'package:nant_client/utils/isolate_manager/blank_isolate_manager/blank_isolate_manager.dart';
import 'package:nant_client/utils/isolate_manager/executor_isolate_manager/executor_isolate_manager.dart';
import 'package:nant_client/utils/isolate_manager/isolate_manager.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';

class IsolateManagerFactory {
  IsolateManagerFactory(this.platformInfo);

  final PlatformInfo platformInfo;

  IsolateManager create() {
    if (platformInfo.isWeb) {
      return BlankIsolateManager();
    } else {
      return ExecutorIsolateManager();
    }
  }
}
