import 'package:dio/dio.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/new_messages_repository/nane_new_messages_repository/mappers.dart';
import 'package:nant_client/repository/room_repository/nane_web_rooms_repository/mappers.dart';
import 'package:nant_client/repository/room_repository/web_room_repository.dart';
import 'package:nant_client/utils/extensions/messages.dart';
import 'package:nant_client/utils/isolate_manager/isolate_manager.dart';

class NaneWebRoomsRepository extends WebRoomsRepository {
  NaneWebRoomsRepository({
    required this.dio,
    required this.host,
    required this.isolateManager,
  });

  final Dio dio;
  final String host;
  final IsolateManager isolateManager;

  @override
  Future<List<Message>> loadRoomMessages(String room) async {
    final response = await dio.get("$host/rooms/$room/history");
    if (response.statusCode != 200) {
      throw Exception(
        "Can't load messages from server $host. "
        "Status code is ${response.statusCode}",
      );
    }
    final data = await isolateManager.jsonDecode(response.data as String) as Map<String, dynamic>;
    final messages = (data['result'] as List).map((e) => MessageMapper.fromJson(e as Map<String, dynamic>)).toList();
    return messages.sortMessages();
  }

  @override
  Future<List<Room>> loadRooms() async {
    final response = await dio.get("$host/rooms");
    if (response.statusCode != 200) {
      throw Exception(
        "Can't load rooms from server $host. "
        "Status code is ${response.statusCode}",
      );
    }
    final data = await isolateManager.jsonDecode(response.data as String) as Map<String, dynamic>;
    final rooms = (data['result'] as List).map((e) => RoomMapper.fromJson(e as Map<String, dynamic>)).toList();
    return rooms;
  }
}
