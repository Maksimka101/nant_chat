import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nant_client/models/message/message.dart';

part 'room.freezed.dart';

/// Chat room model
/// Messages are loading lazy and [messagesCount] is not equal to the [messages].length
@freezed
abstract class Room with _$Room {
  const factory Room({
    @required List<Message> messages,
    @required int messagesCount,
    @required String name,
  }) = _Room;
}

@freezed
abstract class CreateRoom with _$CreateRoom {
  const factory CreateRoom({
    @required String name,
    @required CreateMessage initMessage,
  }) = _CreateRoom;
}

@freezed
abstract class UpdateRoom with _$UpdateRoom {
  const factory UpdateRoom({
    @required String name,
    @required Message lastMessage,
  }) = _UpdateRoom;
}
