import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/bloc/rooms_bloc/rooms_bloc.dart';
import 'package:nant_client/bloc/user_bloc/user_bloc.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'initialize_bloc.freezed.dart';

@freezed
abstract class InitializeBlocEvent with _$InitializeBlocEvent {
  const factory InitializeBlocEvent.initializationStarted() =
      InitializationStarted;

  const factory InitializeBlocEvent.userLoaded(
    @nullable User user,
  ) = UserLoaded;

  const factory InitializeBlocEvent.roomsLoaded(
    @nullable List<Room> rooms,
  ) = RoomsLoaded;
}

@freezed
abstract class InitializeBlocState with _$InitializeBlocState {
  const factory InitializeBlocState.initialized() = Initialized;

  const factory InitializeBlocState.unInitialized() = UnInitialized;
}

/// This bloc is used to initialize app by loading user and all rooms
/// If user loaded but it is null then app is considered initialized
class InitializeBloc extends Bloc<InitializeBlocEvent, InitializeBlocState> {
  InitializeBloc({
    @required this.userBloc,
    @required this.roomsBloc,
  }) : super(const UnInitialized());
  final UserBloc userBloc;
  final RoomsBloc roomsBloc;
  StreamSubscription<UserBlocState> _userSubscription;
  StreamSubscription<RoomsBlocState> _roomsSubscription;

  @override
  Stream<InitializeBlocState> mapEventToState(
    InitializeBlocEvent event,
  ) async* {
    yield* event.map(
      roomsLoaded: _onRoomsLoadedEvent,
      userLoaded: _onUserLoadedEvent,
      initializationStarted: _onInitializationStartedEvent,
    );
  }

  Stream<InitializeBlocState> _onInitializationStartedEvent(
    InitializationStarted event,
  ) async* {
    try {
      await _userSubscription?.cancel();
      _userSubscription = userBloc.listen((event) {
        event.map(
          initial: (_) {},
          unAuthorized: (_) {
            add(const UserLoaded(null));
          },
          loaded: (loaded) {
            add(UserLoaded(loaded.user));
          },
        );
      });
      userBloc.add(const UserBlocEvent.loadUserStarted());
    } catch (e, st) {
      logger.d("Can't initialize User", e, st);
      yield const UnInitialized();
    }
  }

  Stream<InitializeBlocState> _onRoomsLoadedEvent(
    RoomsLoaded event,
  ) async* {
    // App is initialized even if rooms is empty or null
    yield const Initialized();
  }

  Stream<InitializeBlocState> _onUserLoadedEvent(
    UserLoaded event,
  ) async* {
    if (event.user == null) {
      yield const Initialized();
    } else {
      try {
        await _roomsSubscription?.cancel();
        _roomsSubscription = roomsBloc.listen((state) {
          state.map(
            initial: (_) {},
            roomsLoaded: (loaded) {
              add(RoomsLoaded(loaded.rooms));
            },
          );
        });
        roomsBloc.add(const RoomsLoadStarted());
      } catch (e, st) {
        logger.d("Can initialize rooms", e, st);
        // Rooms initialized but with some error and this is fine
        yield const Initialized();
      }
    }
  }

  @override
  Future<void> close() async {
    await _userSubscription?.cancel();
    await _roomsSubscription?.cancel();
    return super.close();
  }
}
