import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/room_repository/room_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

part 'rooms_bloc.freezed.dart';

@freezed
class RoomsBlocEvent with _$RoomsBlocEvent {
  const factory RoomsBlocEvent.initialize() = Initialize;

  const factory RoomsBlocEvent.roomsLoaded(List<Room> rooms) = RoomsLoadedEvent;
}

@freezed
class RoomsBlocState with _$RoomsBlocState {
  const factory RoomsBlocState.initial() = Initial;

  const factory RoomsBlocState.roomsLoaded(List<Room> rooms) = RoomsLoaded;
}

class RoomsBloc extends Bloc<RoomsBlocEvent, RoomsBlocState> {
  RoomsBloc({
    required this.roomsRepository,
  }) : super(const Initial());

  final RoomsRepository roomsRepository;
  StreamSubscription<List<Room>>? _roomsSubscription;

  @override
  Stream<RoomsBlocState> mapEventToState(RoomsBlocEvent event) async* {
    yield* event.map(
      roomsLoaded: _onRoomsLoadedEvent,
      initialize: _mapInitializeToState,
    );
  }

  Stream<RoomsBlocState> _onRoomsLoadedEvent(RoomsLoadedEvent event) async* {
    yield RoomsLoaded(event.rooms);
  }

  Stream<RoomsBlocState> _mapInitializeToState(Initialize event) async* {
    try {
      await _roomsSubscription?.cancel();
      _roomsSubscription = roomsRepository.dataStream.listen((event) {
        add(RoomsLoadedEvent(event));
      });
    } catch (e, st) {
      logger.d("Failed to load rooms", e, st);
    }
  }

  @override
  Future<void> close() async {
    await _roomsSubscription?.cancel();
    return super.close();
  }
}
