import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/models/app_theme/app_theme.dart';

part 'app_config.freezed.dart';

/// Static app config
/// All information in this config must be changed on app update
@freezed
class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String hostName,
    required String webSocketHostName,
    required Locale defaultLocale,
    required AppTheme defaultAppTheme,
    required List<Locale> supportedLocales,
    required int chatPagination,
  }) = _AppConfig;
}
