import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/room_repository/web_room_repository.dart';

class MockWebRoomsRepository extends WebRoomsRepository {
  List<Message> Function(String room) onLoadRoomMessages;
  List<Room> Function() onLoadRooms;

  @override
  Future<List<Message>> loadRoomMessages(String room) async {
    return onLoadRoomMessages(room);
  }

  @override
  Future<List<Room>> loadRooms() async {
    return onLoadRooms();
  }
}
