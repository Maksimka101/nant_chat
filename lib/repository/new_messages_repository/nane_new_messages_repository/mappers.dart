import 'package:nant_client/models/chat_user/chat_user.dart';
import 'package:nant_client/models/message/message.dart';

class MessageMapper {
  static Message fromJson(Map<String, dynamic> json) {
    final createdAt = DateTime.parse(json['created'] as String);
    return Message(
      text: json['text'] as String,
      createdAt: DateTime(
        createdAt.year,
        createdAt.month,
        createdAt.day,
        createdAt.hour,
        createdAt.minute,
        createdAt.second,
      ).toUtc(),
      sender: ChatUserMapper.fromJson(json['sender'] as Map<String, dynamic>),
    );
  }

  static Map<String, dynamic> createToJson(Message message, String? room) {
    return {
      'room': room,
      'text': message.text,
    };
  }
}

class ChatUserMapper {
  static ChatUser fromJson(Map<String, dynamic> json) {
    return ChatUser(name: json['username'] as String);
  }
}
