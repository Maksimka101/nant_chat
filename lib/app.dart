import 'package:flutter/material.dart';
import 'package:nant_client/bloc/edit_room_bloc/edit_room_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/bloc/initialize_bloc/initialize_bloc.dart';
import 'package:nant_client/bloc/localization_bloc/localization_bloc.dart';
import 'package:nant_client/bloc/rooms_bloc/rooms_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/models/app_config/app_config.dart';
import 'package:nant_client/models/app_theme/app_theme.dart';
import 'package:nant_client/repository/localization_repository/hive_localization_repository/hive_localization_repository.dart';
import 'package:nant_client/repository/new_messages_repository/nane_new_messages_repository/nane_new_messages_repository.dart';
import 'package:nant_client/repository/room_repository/common_rooms_repository/common_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/hive_local_rooms_repository/hive_local_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/nane_web_rooms_repository/nane_web_rooms_repository.dart';
import 'package:nant_client/repository/theme_repository/hive_theme_repository/hive_theme_repository.dart';
import 'package:nant_client/repository/user_repository/hive_user_repository/hive_user_repository.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_channel_repository/web_socket_channel_factory.dart';
import 'package:nant_client/ui/screens/app_initialization_screen/app_initialization_screen.dart';
import 'package:nant_client/ui/screens/app_loading_screen.dart';
import 'package:nant_client/ui/widgets/app_builder/app_builder.dart';
import 'package:nant_client/utils/dio/default_dio.dart';
import 'package:nant_client/utils/get_it/get_it.dart';
import 'package:nant_client/utils/hive/hive_initializer.dart';
import 'package:nant_client/utils/isolate_manager/isolate_manager_factory.dart';
import 'package:nant_client/utils/logger/logger.dart';
import 'package:nant_client/utils/platform_info/platform_info.dart';
import 'package:nant_client/utils/platform_info/platform_info_default_implementation.dart';

Future<void> runNantApp() async {
  await initializeRequiredRepositories();
  runLoadingApp();
  await initializeRepositories();
  runFinalApp();
}

Future<void> initializeRequiredRepositories() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    const appConfig = AppConfig(
      chatPagination: 30,
      // hostName: "http://127.0.0.1:8080/api",
      hostName: "https://nane.tada.team/api",
      // webSocketHostName: "ws://127.0.0.1:8080/ws",
      webSocketHostName: "wss://nane.tada.team/ws",
      defaultLocale: Locale('en'),
      defaultAppTheme: AppDarkTheme(),
      supportedLocales: [Locale('ru'), Locale('en')],
    );
    final localizationRepository = HiveLocalizationRepository(
      appConfig.defaultLocale,
    );
    final platformInfo = DefaultPlatformInfo();
    final themeRepository = HiveThemeRepository(
      defaultTheme: appConfig.defaultAppTheme,
    );
    await HiveInitializer.initializeHive(platformInfo);
    await localizationRepository.initialize();
    await themeRepository.initialize();
    getIt
      ..registerSingleton<PlatformInfo>(platformInfo)
      ..registerSingleton<AppConfig>(appConfig)
      ..registerSingletonBloc(
        LocalizationBloc(
          localizationRepository: localizationRepository,
        )..add(const LocalizationLoadStarted()),
      )
      ..registerSingletonBloc(
        ThemeBloc(
          themeRepository: themeRepository,
        )..add(const ThemeLoadStarted()),
      );
    // App must wait until localization and theme will be loaded
    await themeRepository.loadTheme();
    await localizationRepository.loadLocale();
  } catch (e, st) {
    logger.e("Error in `initializeRequiredRepositories`", e, st);
  }
}

Future<void> initializeRepositories() async {
  try {
    final appConfig = getIt.get<AppConfig>();
    final dio = getDefaultDio();
    final webSocketFactory = WebSocketChannelRepositoryFactory();
    final userRepository = HiveUserRepository();
    final platformInfo = getIt.get<PlatformInfo>();
    final isolateManager = IsolateManagerFactory(platformInfo).create();
    final roomsRepository = CommonRoomsRepository(
      paginationSize: appConfig.chatPagination,
      webRepository: NaneWebRoomsRepository(
        isolateManager: isolateManager,
        dio: dio,
        host: appConfig.hostName,
      ),
      localRepository: HiveLocalRoomsRepository(
        paginationSize: appConfig.chatPagination,
      ),
      messagesRepository: NaneMessagesRepository(
        webSocketFactory: webSocketFactory,
        wsHost: appConfig.webSocketHostName,
        userRepository: userRepository,
      ),
    );
    await roomsRepository.initialize();
    await userRepository.initialize();
    await isolateManager.initialize();

    final userBloc = UserBloc(userRepository: userRepository);
    final roomsBloc = RoomsBloc(roomsRepository: roomsRepository);

    getIt
      ..registerSingletonBloc<UserBloc>(userBloc)
      ..registerSingletonBloc<RoomsBloc>(roomsBloc)
      ..registerLazySingletonBloc<InitializeBloc>(
        () => InitializeBloc(
          userBloc: userBloc,
          roomsBloc: roomsBloc,
        )..add(const InitializationStarted()),
      )
      ..registerLazySingletonBloc<EditUserBloc>(
        () => EditUserBloc(
          userRepository: userRepository,
        ),
      )
      ..registerLazySingletonBloc<EditRoomBloc>(
        () => EditRoomBloc(
          roomsRepository: roomsRepository,
        ),
      );
  } catch (e, st) {
    logger.e("Error in `initializeRepositories`", e, st);
  }
}

/// Приложение может инициализироваться некоторое время.
/// Пользователь должен сразу что-то увидеть
void runLoadingApp() {
  runApp(
    const AppBuilder(
      home: AppLoadingScreen(),
    ),
  );
}

void runFinalApp() {
  runApp(
    const AppBuilder(
      home: AppInitializationScreen(),
    ),
  );
}
