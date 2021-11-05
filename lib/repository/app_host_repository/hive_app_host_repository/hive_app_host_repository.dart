import 'package:nant_client/repository/app_host_repository/app_host_repository.dart';
import 'package:nant_client/utils/hive/hive_box_utils.dart';

class HiveAppHostRepository extends AppHostRepository {
  late final _hostInfoBox = openHiveBox<String?>(_boxName);
  static const _boxName = "hostInfoBox";
  static const _httpHostKey = "httpHost";
  static const _wsHostKey = "wsHost";

  @override
  Future<void> load() async {
    final box = await _hostInfoBox;
    final host = box.get(_httpHostKey);
    final wsHost = box.get(_wsHostKey);
    if (host == null || wsHost == null) {
      emit(null);
    } else {
      emit(AppHostInfo(hostName: host, webSocketHostName: wsHost));
    }
  }

  @override
  Future<void> save(AppHostInfo? appHostInfo) async {
    final box = await _hostInfoBox;
    await box.put(_httpHostKey, appHostInfo?.hostName);
    await box.put(_wsHostKey, appHostInfo?.webSocketHostName);
    emit(appHostInfo);
  }
  
  @override
  Future<void> dispose() async {
    await _hostInfoBox.ifLaunched(() => _hostInfoBox.then((value) => value.close()));
    return super.dispose();
  }
}
