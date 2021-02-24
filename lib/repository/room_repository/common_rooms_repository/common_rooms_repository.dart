import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/new_messages_repository/new_messages_repository.dart';
import 'package:nant_client/repository/room_repository/local_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/room_repository.dart';
import 'package:nant_client/repository/room_repository/web_room_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

class CommonRoomsRepository extends RoomsRepository {
  CommonRoomsRepository({
    @required WebRoomsRepository webRepository,
    @required LocalRoomsRepository localRepository,
    @required MessagesRepository messagesRepository,
    @required int paginationSize,
  }) : super(
          messagesRepository: messagesRepository,
          webRepository: webRepository,
          localRepository: localRepository,
          paginationSize: paginationSize,
        );
  var _initialized = false;
  StreamSubscription<List<Room>> _localRoomsSubscription;
  StreamSubscription<ReceivedMessage> _receivedMessagesStream;

  @override
  Future<void> initialize() async {
    if (!_initialized) {
      await webRepository.initialize();
      await localRepository.initialize();
      await messagesRepository.initialize();

      _initialized = true;
    }
    return super.initialize();
  }

  @override
  Future<void> loadRooms() async {
    try {
      await _localRoomsSubscription?.cancel();
      await _receivedMessagesStream?.cancel();
      await messagesRepository.subscribeOnWebMessages();
      _localRoomsSubscription =
          localRepository.dataStream.listen(_listenForRoomsFromCache);
      _receivedMessagesStream =
          messagesRepository.dataStream.listen(_listenForNewMessages);
      final localRoomsFuture = localRepository.dataStream.first;
      await localRepository.loadRooms();
      final localRooms = await localRoomsFuture;
      final localRoomsNameSet = localRooms.map((e) => e.name).toSet();
      final webRooms = await webRepository.loadRooms();
      for (final webRoom in webRooms) {
        if (!localRoomsNameSet.contains(webRoom.name)) {
          await localRepository.saveRoom(webRoom);
        }
      }
    } catch (e, st) {
      logger.e("Can't load rooms from cache", e, st);
      rethrow;
    }
  }

  void _listenForRoomsFromCache(List<Room> rooms) {
    emit(rooms);
  }

  Future<void> _listenForNewMessages(ReceivedMessage receivedMessage) async {
    await localRepository.saveMessage(
      room: receivedMessage.room,
      message: receivedMessage.message,
    );
  }

  @override
  Future<void> createRoom(CreateRoom createRoom) async {
    try {
      await messagesRepository.subscribeOnWebMessages();
      await messagesRepository.sendMessage(
        room: createRoom.name,
        createMessage: createRoom.initMessage,
      );
      await messagesRepository.dataStream.firstWhere(
        (element) => element.room == createRoom.name,
      );
    } catch (e, st) {
      logger.e("Can't create room", e, st);
      rethrow;
    }
  }

  @override
  Future<void> loadNextPage(String room) async {
    try {
      final localRoomsFuture = localRepository.dataStream.first;
      await localRepository.loadNextPage(room);
      final localRooms = await localRoomsFuture;
      final localRoom = localRooms.firstWhere(
        (element) => element.name == room,
        orElse: () => null,
      );
      // Messages may loading for about 15 seconds so i need to update localRoom
      final webMessages = await webRepository.loadRoomMessages(room);

      // Create room
      if (localRoom == null) {
        await localRepository.saveRoom(Room(
          messagesCount: webMessages.length,
          messages: webMessages,
          name: room,
        ));
        return;
      }

      // Cache new messages
      if (webMessages.isNotEmpty) {
        if (webMessages.length > localRoom.messagesCount) {
          await localRepository.removeAllAndSaveMessages(
            room: room,
            messages: webMessages,
          );
        } else {
          final lastCachedMessage = localRoom.messages.first;
          final newWebMessages = webMessages
              .takeWhile(
                (value) => value != lastCachedMessage,
              )
              .toList();
          if (newWebMessages.isNotEmpty) {
            await localRepository.saveMessages(
              room: room,
              messages: newWebMessages,
            );
          }
        }
      }
    } catch (e, st) {
      logger.e("Can't load full room", e, st);
      rethrow;
    }
  }

  @override
  Future<void> sendMessage({String room, CreateMessage createMessage}) async {
    try {
      await messagesRepository.sendMessage(
        room: room,
        createMessage: createMessage,
      );
    } catch (e, st) {
      logger.e("Can't send message", e, st);
      rethrow;
    }
  }

  @override
  Future<void> dispose() async {
    await webRepository.dispose();
    await localRepository.dispose();
    await _localRoomsSubscription?.cancel();
    await _receivedMessagesStream?.cancel();
    return super.dispose();
  }
}
