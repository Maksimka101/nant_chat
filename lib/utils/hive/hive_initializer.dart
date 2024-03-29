import 'dart:io';

import 'package:hive/hive.dart';
import 'package:nant_client/models/chat_user/chat_user.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/localization_repository/hive_localization_repository/models.dart';
import 'package:nant_client/repository/room_repository/hive_local_rooms_repository/models.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';
import 'package:path_provider/path_provider.dart';

class HiveInitializer {
  static var _initialized = false;

  static Future<void> initializeHive(PlatformInfo platformInfo) async {
    if (!_initialized) {
      if (platformInfo.isWeb) {
        Hive.init('');
      } else {
        final appDirectory = await getApplicationDocumentsDirectory();
        Hive.init(appDirectory.path);
      }
      _registerAdapters();
      _initialized = true;
    }
  }

  static Future<void> initializeMockHive() async {
    final hiveDirectory = Directory('./build/hive');
    if (hiveDirectory.existsSync()) {
      await hiveDirectory.delete(recursive: true);
    }
    await hiveDirectory.create();
    Hive.init(hiveDirectory.path);
    if (!_initialized) {
      _registerAdapters();
      _initialized = true;
    }
  }

  static void _registerAdapters() {
    Hive
      ..registerAdapter<Message>(MessageAdapter())
      ..registerAdapter<ChatUser>(ChatUserAdapter())
      ..registerAdapter<HiveRoom>(HiveRoomAdapter())
      ..registerAdapter<User>(UserAdapter())
      ..registerAdapter<Locale>(LocaleAdapter());
  }
}
