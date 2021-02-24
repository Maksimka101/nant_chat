import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/new_messages_repository/nane_new_messages_repository/mappers.dart';

class RoomMapper {
  static Room fromJson(Map<String, dynamic> json) {
    return Room(
      messagesCount: 1,
      messages: [
        MessageMapper.fromJson(
          json['last_message'] as Map<String, dynamic>,
        )
      ],
      name: json['name'] as String,
    );
  }
}
