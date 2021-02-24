import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:nant_client/models/chat_user/chat_user.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/repository/new_messages_repository/nane_new_messages_repository/mappers.dart';
import 'package:nant_client/repository/new_messages_repository/new_messages_repository.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_factory.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';

class NaneMessagesRepository extends MessagesRepository {
  NaneMessagesRepository({
    @required this.webSocketFactory,
    @required this.wsHost,
    @required UserRepository userRepository,
  }) : super(userRepository: userRepository);

  final String wsHost;
  final WebSocketRepositoryFactory webSocketFactory;
  WebSocketRepository<Map> _webSocket;
  StreamSubscription<Map> _newMessagesSubscription;

  @override
  Future<void> subscribeOnWebMessages() async {
    _webSocket ??= webSocketFactory.createRepository(
      url: "$wsHost?username=${userRepository.data.name}",
    );
    await _newMessagesSubscription?.cancel();
    _newMessagesSubscription = _webSocket.listen(_listenForNewMessages);
  }

  void _listenForNewMessages(Map response) {
    if (response.containsKey('text')) {
      final receivedMessage = ReceivedMessage(
        room: response['room'] as String,
        message: MessageMapper.fromJson(response.cast<String, dynamic>()),
      );
      emit(receivedMessage);
    }
  }

  @override
  Future<Message> sendMessage({
    String room,
    CreateMessage createMessage,
  }) async {
    assertInitialized(_newMessagesSubscription != null);
    final date = createMessage.createdAt;
    final message = Message(
      sender: ChatUser(name: userRepository.data.name),
      createdAt: DateTime(
        date.year,
        date.month,
        date.day,
        date.hour,
        date.minute,
        date.second,
      ).toUtc(),
      text: createMessage.text,
    );

    _webSocket.add(MessageMapper.createToJson(message, room));

    return message;
  }

  @override
  Future<void> dispose() async {
    await _newMessagesSubscription?.cancel();
    return super.dispose();
  }
}
