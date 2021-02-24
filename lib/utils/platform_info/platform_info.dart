import 'package:nant_client/utils/platform_info/platform_info_default_implementation.dart';

/// Interface to get information about platform
///
/// [DefaultPlatformInfo] - default implementation which may be used in 99% cases
abstract class PlatformInfo {
  /// Info about platform. Platform is an environment
  bool get isWeb;

  bool get isAndroid;

  /// Info about real device. For example app can work in browser on android
  /// so [isAndroid] will return false in this case but [isAndroidDevice] return true
  bool get isAndroidDevice;

  bool get isIos;

  bool get isIosDevice;

  bool get isLinux;

  bool get isLinuxDevice;

  bool get isMacOs;

  bool get isMacOsDevice;

  bool get isWindows;

  bool get isWindowsDevice;

  bool get isMaterial;

  bool get isCupertino;
}
