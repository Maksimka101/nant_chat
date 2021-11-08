import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/repository/base_repository.dart';

part 'app_host_repository.freezed.dart';

abstract class AppHostRepository extends BaseRepository<AppHostInfo?> {
  /// Loads [AppHostInfo] from local storage
  Future<void> load();
  
  /// Saves [appHostInfo]
  /// 
  /// If [appHostInfo] is null works like delete
  Future<void> save(AppHostInfo? appHostInfo);
}

@freezed
class AppHostInfo with _$AppHostInfo {
  const factory AppHostInfo({
    required String hostName,
    required String webSocketHostName,
  }) = _AppHostInfo;
}
