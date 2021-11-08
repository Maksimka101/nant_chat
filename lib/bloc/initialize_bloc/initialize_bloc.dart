import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/app_host_repository/app_host_repository.dart';
import 'package:nant_client/repository/room_repository/room_repository.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'initialize_bloc.freezed.dart';

@freezed
class InitializeBlocEvent with _$InitializeBlocEvent {
  const factory InitializeBlocEvent.initializationStarted() = InitializationStarted;
}

@freezed
class InitializeBlocState with _$InitializeBlocState {
  const factory InitializeBlocState.initialized() = Initialized;

  const factory InitializeBlocState.unInitialized() = UnInitialized;
}

/// This bloc is used to initialize app by loading user, host info and rooms
/// If user loaded but it is null then app is considered initialized
class InitializeBloc extends Bloc<InitializeBlocEvent, InitializeBlocState> {
  InitializeBloc({
    required this.appHostRepository,
    required this.userRepository,
    required this.roomsRepository,
  }) : super(const UnInitialized());
  final UserRepository userRepository;
  final AppHostRepository appHostRepository;
  final RoomsRepository roomsRepository;

  static const _retryDuration = Duration(milliseconds: 500);

  StreamSubscription<User?>? _userSubscription;
  StreamSubscription<AppHostInfo?>? _hostInfoSubscription;
  StreamSubscription<List<Room>?>? _roomsSubscription;

  var _userLoaded = false;
  var _appHostInfoLoaded = false;
  var _roomsLoaded = false;
  DateTime? started;

  @override
  Stream<InitializeBlocState> mapEventToState(
    InitializeBlocEvent event,
  ) async* {
    yield* event.map(
      initializationStarted: _onInitializationStartedEvent,
    );
  }

  Stream<InitializeBlocState> _onInitializationStartedEvent(
    InitializationStarted event,
  ) async* {
    try {
      started ??= DateTime.now();
      if (!_userLoaded) {
        // Start initialization. When user will be loaded initialization will be continued
        await _userSubscription?.cancel();
        _userSubscription = userRepository.dataStream.listen((event) {
          _userLoaded = true;
          add(const InitializationStarted());
        });
        await userRepository.loadUser();
      } else if (!_appHostInfoLoaded) {
        logger.i("User loaded after ${DateTime.now().difference(started!)}");
        // Initialize host info if it isn't
        await _hostInfoSubscription?.cancel();
        _hostInfoSubscription = appHostRepository.dataStream.listen((event) {
          _appHostInfoLoaded = true;
          add(const InitializationStarted());
        });
        await appHostRepository.load();
      } else if (!_roomsLoaded) {
        logger.i("Host loaded after ${DateTime.now().difference(started!)}");
        // Initialize rooms
        await _roomsSubscription?.cancel();
        _roomsSubscription = roomsRepository.dataStream.listen((event) {
          _roomsLoaded = true;
          add(const InitializationStarted());
        });
        await roomsRepository.loadRooms();
      } else {
        logger.i("Rooms loaded after ${DateTime.now().difference(started!)}");
        // Initialized
        yield const Initialized();
      }
    } catch (e, st) {
      logger.d("Error in _onInitializationStarted. Trying to re initialize", e, st);

      _userLoaded = false;
      _appHostInfoLoaded = false;
      _roomsLoaded = false;

      await Future.delayed(_retryDuration);
    }
  }

  @override
  Future<void> close() async {
    await _userSubscription?.cancel();
    await _roomsSubscription?.cancel();
    return super.close();
  }
}
