import 'package:dash_chat/dash_chat.dart' as dash;
import 'package:nant_client/models/chat_user/chat_user.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/user/user.dart';

class ChatUserMapper {
  static dash.ChatUser chatUserToDash(ChatUser user) {
    return dash.ChatUser(
      name: user.name,
      uid: user.name,
    );
  }
}

class UserMapper {
  static ChatUser userToChatUser(User user) {
    return ChatUser(name: user.name);
  }
}

class MessagesMapper {
  static List<dash.ChatMessage> messagesToDashMessages(List<Message?> messages) {
    return messages
        .map(
          (message) => dash.ChatMessage(
            text: message!.text,
            createdAt: message.createdAt,
            user: ChatUserMapper.chatUserToDash(message.sender),
          ),
        )
        .toList();
  }
}
