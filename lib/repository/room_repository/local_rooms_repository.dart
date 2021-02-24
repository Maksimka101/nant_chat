import 'package:flutter/foundation.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/base_repository.dart';

/// Store rooms on device
/// Rooms are loading by page which size is [paginationSize]
abstract class LocalRoomsRepository extends BaseRepository<List<Room>> {
  LocalRoomsRepository({@required this.paginationSize});

  final int paginationSize;

  Future<void> loadRooms();

  /// Save room
  Future<void> saveRoom(Room room);

  /// Load next page
  Future<void> loadNextPage(String room);

  Future<void> saveMessage({@required String room, @required Message message});

  Future<void> saveMessages({
    @required String room,
    @required List<Message> messages,
  });

  Future<void> removeAllAndSaveMessages({
    @required String room,
    @required List<Message> messages,
  });
}
