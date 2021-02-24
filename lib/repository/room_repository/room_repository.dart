import 'package:flutter/foundation.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/base_repository.dart';
import 'package:nant_client/repository/new_messages_repository/new_messages_repository.dart';
import 'package:nant_client/repository/room_repository/local_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/web_room_repository.dart';

abstract class RoomsRepository extends BaseRepository<List<Room>> {
  RoomsRepository({
    @required this.localRepository,
    @required this.webRepository,
    @required this.messagesRepository,
    @required this.paginationSize,
  });

  final int paginationSize;
  final LocalRoomsRepository localRepository;
  final WebRoomsRepository webRepository;

  /// Used to create new room and send message
  final MessagesRepository messagesRepository;

  /// Load all rooms in a compact form
  /// They will be pushed to the [dataStream]
  /// If rooms don't exist null will be pushed
  Future<void> loadRooms();

  /// Load next [paginationSize] message in this room
  Future<void> loadNextPage(String room);

  Future<void> sendMessage({
    @required String room,
    @required CreateMessage createMessage,
  });

  Future<void> createRoom(CreateRoom createRoom);
}
