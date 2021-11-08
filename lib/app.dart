import 'package:flutter/material.dart';
import 'package:nant_client/bloc/app_host_bloc/edit_app_host_bloc.dart';
import 'package:nant_client/bloc/authorization_bloc/authorization_bloc.dart';
import 'package:nant_client/bloc/edit_room_bloc/edit_room_bloc.dart';
import 'package:nant_client/bloc/edit_user_bloc/edit_user_bloc.dart';
import 'package:nant_client/bloc/initialize_bloc/initialize_bloc.dart';
import 'package:nant_client/bloc/localization_bloc/localization_bloc.dart';
import 'package:nant_client/bloc/rooms_bloc/rooms_bloc.dart';
import 'package:nant_client/bloc/sign_out_bloc/sign_out_bloc.dart';
import 'package:nant_client/bloc/theme_bloc/theme_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/models/app_config/app_config.dart';
import 'package:nant_client/models/app_theme/app_theme.dart';
import 'package:nant_client/repository/app_host_repository/hive_app_host_repository/hive_app_host_repository.dart';
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
      defaultHost: "nane.tada.team",
      useSecureConnection: true,
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
    final hostRepository = HiveAppHostRepository();
    final platformInfo = getIt.get<PlatformInfo>();
    final isolateManager = IsolateManagerFactory(platformInfo).create();
    final localRoomsRepository = HiveLocalRoomsRepository(paginationSize: appConfig.chatPagination);
    final webRoomsRepository = NaneWebRoomsRepository(
      appHostRepository: hostRepository,
      isolateManager: isolateManager,
      dio: dio,
    );
    final messagesRepository = NaneMessagesRepository(
      appHostRepository: hostRepository,
      webSocketFactory: webSocketFactory,
      userRepository: userRepository,
    );
    final roomsRepository = CommonRoomsRepository(
      paginationSize: appConfig.chatPagination,
      webRepository: webRoomsRepository,
      localRepository: localRoomsRepository,
      messagesRepository: messagesRepository,
    );
    await roomsRepository.initialize();
    await userRepository.initialize();
    await isolateManager.initialize();
    await webRoomsRepository.initialize();
    await localRoomsRepository.initialize();
    await messagesRepository.initialize();

    final userBloc = UserBloc(userRepository: userRepository);
    final roomsBloc = RoomsBloc(roomsRepository: roomsRepository);

    getIt
      ..registerLazySingletonBloc<EditAppHostBloc>(
        () => EditAppHostBloc(appHostRepository: hostRepository),
      )
      ..registerSingletonBloc<UserBloc>(userBloc..add(const UserBlocEvent.initialize()))
      ..registerSingletonBloc<RoomsBloc>(roomsBloc..add(const RoomsBlocEvent.initialize()))
      ..registerLazySingletonBloc<InitializeBloc>(
        () => InitializeBloc(
          appHostRepository: hostRepository,
          roomsRepository: roomsRepository,
          userRepository: userRepository,
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
      )
      ..registerLazySingletonBloc<SignOutBloc>(
        () => SignOutBloc(
          repositoryCleaners: [
            userRepository.clear,
            localRoomsRepository.clear,
            hostRepository.clear,
          ],
        ),
      )
      ..registerLazySingletonBloc<AuthorizationBloc>(
        () => AuthorizationBloc(
          editUserBloc: getIt(),
          editAppHostBloc: getIt(),
          roomsRepository: roomsRepository,
        ),
      );

    await getIt.allReady();
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
