import 'package:flutter/widgets.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';

/// This class helps determine how to build widget
class LayoutInfo {
  LayoutInfo({
    required this.platformInfo,
    required this.context,
  });

  static late LayoutInfo instance;

  final PlatformInfo platformInfo;
  final BuildContext context;

  /// Returns true if app should build desktop layout
  bool get isDesktopLayout {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width > mediaQuery.size.height * 0.85;
  }

  /// Returns true if current platform support desktop features like mouse or keyboard
  /// It is maybe helpful to build different widgets for touch and mouse interface
  bool get isDesktopPlatform {
    return platformInfo.isLinuxDevice ||
        platformInfo.isMacOsDevice ||
        platformInfo.isWindowsDevice;
  }
}
