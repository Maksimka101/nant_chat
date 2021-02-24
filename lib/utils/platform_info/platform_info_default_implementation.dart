import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';

class DefaultPlatformInfo extends PlatformInfo {
  @override
  bool get isWeb => kIsWeb;

  @override
  bool get isAndroid => !isWeb && Platform.isAndroid;

  @override
  bool get isIos => !isWeb && Platform.isIOS;

  @override
  bool get isLinux => !isWeb && Platform.isLinux;

  @override
  bool get isMacOs => !isWeb && Platform.isMacOS;

  @override
  bool get isWindows => !isWeb && Platform.isWindows;

  @override
  bool get isCupertino => isMacOsDevice || isIosDevice;

  @override
  bool get isMaterial => !isCupertino;

  @override
  bool get isAndroidDevice => defaultTargetPlatform == TargetPlatform.android;

  @override
  bool get isIosDevice => defaultTargetPlatform == TargetPlatform.iOS;

  @override
  bool get isLinuxDevice => defaultTargetPlatform == TargetPlatform.linux;

  @override
  bool get isMacOsDevice => defaultTargetPlatform == TargetPlatform.macOS;

  @override
  bool get isWindowsDevice => defaultTargetPlatform == TargetPlatform.windows;
}
