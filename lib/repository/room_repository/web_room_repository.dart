import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/resource_repository.dart';

abstract class WebRoomsRepository extends ResourceRepository {
  Future<List<Room>> loadRooms();

  Future<List<Message>> loadRoomMessages(String room);
}
