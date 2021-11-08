import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/repository/base_repository.dart';
import 'package:nant_client/repository/user_repository/user_repository.dart';

/// This repository receive new messages from web from all rooms
/// and send new messages to web
abstract class MessagesRepository extends BaseRepository<ReceivedMessage> {
  MessagesRepository({required this.userRepository});

  final UserRepository userRepository;

  /// This function is used to start listening for new messages from web
  Future<void> subscribeOnWebMessages();

  /// Send message to web
  Future<Message> sendMessage({
    required String room,
    required CreateMessage createMessage,
  });
}
