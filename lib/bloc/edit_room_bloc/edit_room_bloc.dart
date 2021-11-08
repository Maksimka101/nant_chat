import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/room_repository/room_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';
import 'package:pedantic/pedantic.dart';

part 'edit_room_bloc.freezed.dart';

@freezed
class EditRoomBlocEvent with _$EditRoomBlocEvent {
  const factory EditRoomBlocEvent.nextPageRequested({
    required String roomName,
  }) = NextPageRequested;

  const factory EditRoomBlocEvent.messageSent({
    required String roomName,
    required CreateMessage createMessage,
  }) = MessageSent;

  const factory EditRoomBlocEvent.newRoomCreated({
    required CreateRoom createRoom,
  }) = NewRoomCreated;
}

@freezed
class EditRoomBlocState with _$EditRoomBlocState {
  const factory EditRoomBlocState.initial() = Initial;

  const factory EditRoomBlocState.newRoomCreationStarted() =
      NewRoomCreationStarted;

  const factory EditRoomBlocState.newRoomCreatedSuccessful(
    String roomName,
  ) = NewRoomCreatedSuccessful;

  const factory EditRoomBlocState.error(String message) = Error;
}

class EditRoomBloc extends Bloc<EditRoomBlocEvent, EditRoomBlocState> {
  EditRoomBloc({
    required this.roomsRepository,
  }) : super(const Initial());
  final RoomsRepository roomsRepository;

  @override
  Stream<EditRoomBlocState> mapEventToState(EditRoomBlocEvent event) async* {
    yield* event.map(
      newRoomCreated: _onRoomCreatedEvent,
      messageSent: _onMessageSentEvent,
      nextPageRequested: _onNextPageReceivedEvent,
    );
  }

  Stream<EditRoomBlocState> _onRoomCreatedEvent(
    NewRoomCreated event,
  ) async* {
    try {
      yield const NewRoomCreationStarted();
      await roomsRepository.createRoom(event.createRoom);
      yield NewRoomCreatedSuccessful(event.createRoom.name);
    } catch (e, st) {
      logger.d("Failed to create room ${event.createRoom.name}", e, st);
      yield Error("Failed to create room due to ${e.toString()}");
    }
  }

  Stream<EditRoomBlocState> _onMessageSentEvent(
    MessageSent event,
  ) async* {
    try {
      await roomsRepository.sendMessage(
        room: event.roomName,
        createMessage: event.createMessage,
      );
    } catch (e, st) {
      logger.d("Failed to sent message to ${event.roomName} room", e, st);
      yield Error("Failed to sent message due to ${e.toString()}");
    }
  }

  Stream<EditRoomBlocState> _onNextPageReceivedEvent(
    NextPageRequested event,
  ) async* {
    unawaited(
      roomsRepository.loadNextPage(event.roomName).catchError((e, st) {
        logger.d("Failed to load more messages", e, st as StackTrace);
      }),
    );
  }
}
