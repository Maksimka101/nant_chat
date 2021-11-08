import 'dart:async';

import 'package:nant_client/models/chat_user/chat_user.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/app_host_repository/app_host_repository.dart';
import 'package:nant_client/repository/new_messages_repository/nane_new_messages_repository/mappers.dart';
import 'package:nant_client/repository/new_messages_repository/new_messages_repository.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_factory.dart';
import 'package:nant_client/repository/web_socket_repository/web_socket_repository.dart';
import 'package:nant_client/utils/logger/logger.dart';

class NaneMessagesRepository extends MessagesRepository {
  NaneMessagesRepository({
    required this.webSocketFactory,
    required this.appHostRepository,
    required UserRepository userRepository,
  }) : super(userRepository: userRepository);

  final AppHostRepository appHostRepository;
  final WebSocketRepositoryFactory webSocketFactory;
  WebSocketRepository<Map>? _webSocket;
  StreamSubscription<Map>? _newMessagesSubscription;
  StreamSubscription<AppHostInfo?>? _appHostInfoSubscription;
  StreamSubscription<User?>? _userSubscription;

  @override
  Future<void> subscribeOnWebMessages() async {
    await _appHostInfoSubscription?.cancel();
    _appHostInfoSubscription = appHostRepository.dataStream.listen((_) => _tryToSubscribeOnWebSocket());
    await _userSubscription?.cancel();
    _userSubscription = userRepository.dataStream.listen((_) => _tryToSubscribeOnWebSocket());
    await _tryToSubscribeOnWebSocket();
  }

  Future<void> _tryToSubscribeOnWebSocket() async {
    final appHostInfo = appHostRepository.data;
    final user = userRepository.data;

    await _webSocket?.close();

    if (appHostInfo != null && user != null) {
      final wsHost = appHostInfo.webSocketHostName;
      final user = userRepository.data ?? await userRepository.dataStream.firstWhere((element) => element != null);
      _webSocket ??= webSocketFactory.createRepository(url: "$wsHost?username=${user!.name}");
      await _newMessagesSubscription?.cancel();
      _newMessagesSubscription = _webSocket?.stream.listen(_listenForNewMessages);
      logger.i("(Re)subscribe on socket");
    } else {
      logger.i(
        "Didn't resubscribe on socket. "
        "userIsNull: ${user == null}, "
        "appHostInfoIsNull: ${appHostInfo == null}",
      );
    }
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
    required String room,
    required CreateMessage createMessage,
  }) async {
    final date = createMessage.createdAt;
    final message = Message(
      sender: ChatUser(name: userRepository.data!.name),
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

    _webSocket?.add(MessageMapper.createToJson(message, room));

    return message;
  }

  @override
  Future<void> dispose() async {
    await _newMessagesSubscription?.cancel();
    return super.dispose();
  }
}
