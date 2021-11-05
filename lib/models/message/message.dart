import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:nant_client/models/chat_user/chat_user.dart';

part 'message.freezed.dart';

part 'message.g.dart';

@HiveType(typeId: 0)
@freezed
class Message with _$Message {
  const factory Message({
    @HiveField(0) required String text,
    @HiveField(1) required DateTime createdAt,
    @HiveField(2) required ChatUser sender,
  }) = _Message;
}

@freezed
class ReceivedMessage with _$ReceivedMessage {
  const factory ReceivedMessage({
    required String room,
    required Message message,
  }) = _ReceivedMessage;
}

@freezed
class CreateMessage with _$CreateMessage {
  const factory CreateMessage({
    required String text,
    required DateTime createdAt,
  }) = _CreateMessage;
}
