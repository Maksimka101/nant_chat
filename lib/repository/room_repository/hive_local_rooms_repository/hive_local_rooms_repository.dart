import 'package:hive/hive.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/repository/room_repository/hive_local_rooms_repository/models.dart';
import 'package:nant_client/repository/room_repository/local_rooms_repository.dart';
import 'package:nant_client/utils/extensions/hive.dart';
import 'package:nant_client/utils/extensions/messages.dart';
import 'package:nant_client/utils/extensions/object.dart';
import 'package:nant_client/utils/hive/hive_box_utils.dart';

class HiveLocalRoomsRepository extends LocalRoomsRepository {
  HiveLocalRoomsRepository({
    required int paginationSize,
  }) : super(paginationSize: paginationSize);

  static const _roomInfoBoxName = "RoomInfoBox";

  /// Store all rooms info
  late final _roomInfoBox = openHiveBox<HiveRoom>(_roomInfoBoxName);
  final _roomsMap = <String, Room>{};

  /// Boxes with messages of the room
  final _messagesBoxMap = <String, LazyBox<Message?>>{};

  Future<LazyBox<Message?>> _getMessagesBox(String room) async {
    final box = _messagesBoxMap[room] ??= await Hive.openLazyBox<Message?>(
      "msgOf$room".hashCode.toString(),
    );
    if (!box.isOpen) {
      _messagesBoxMap[room] = await Hive.openLazyBox<Message?>(
        "msgOf$room".hashCode.toString(),
      );
    }
    return box;
  }

  @override
  Future<void> loadRooms() async {
    final box = await _roomInfoBox;
    final hiveRooms = box.toMap();
    for (final loadedEntry in hiveRooms.entries) {
      final key = loadedEntry.value.name;
      final existingRoom = _roomsMap[key];
      if (existingRoom == null || existingRoom.messages.isEmpty) {
        final messages = await _loadMessages(
          forRoom: key,
          fromMessage: loadedEntry.value.messagesCount - paginationSize,
          toMessage: loadedEntry.value.messagesCount,
        );
        _roomsMap[key] = Room(
          messagesCount: loadedEntry.value.messagesCount,
          messages: messages,
          name: key,
        );
      }
    }
    _emit();
  }

  /// Load messages [forRoom] in range [fromMessage]..[toMessage] not inclusive [toMessage]
  Future<List<Message>> _loadMessages({
    required String forRoom,
    required int fromMessage,
    required int toMessage,
  }) async {
    final messagesBox = await _getMessagesBox(forRoom);
    final messages = <Message>[];
    for (var i = toMessage - 1; i >= (fromMessage >= 0 ? fromMessage : 0); i--) {
      try {
        final message = await messagesBox.getAt(i);
        if (message == null) {
          break;
        }
        messages.add(
          message.copyWith.call(
            createdAt: message.createdAt.toUtc(),
          ),
        );
      } catch (_) {
        // No more messages in cache
        break;
      }
    }
    return messages;
  }

  void _emit() {
    final toEmit = _roomsMap.values.toList();
    if (data == null || data != toEmit) {
      emit(toEmit);
    }
  }

  @override
  Future<void> loadNextPage(String room) async {
    final box = await _roomInfoBox;
    final currentRoom = _roomsMap[room];

    if (currentRoom == null) {
      return;
    }

    final currentMessagesCount = currentRoom.messages.length;
    final hiveRoom = box.get(room.toHiveKey())!;
    final newMessages = await _loadMessages(
      forRoom: room,
      fromMessage: hiveRoom.messagesCount - paginationSize - currentMessagesCount,
      toMessage: hiveRoom.messagesCount - currentMessagesCount,
    );
    _roomsMap[room] = currentRoom.copyWith.call(
      messages: currentRoom.messages
        ..addAll(newMessages)
        ..sortMessages(),
      messagesCount: hiveRoom.messagesCount,
    );
    _emit();
  }

  @override
  Future<void> saveMessage({required String room, required Message message}) async {
    final box = await _roomInfoBox;
    var hiveRoom = box.get(room.toHiveKey());
    hiveRoom = hiveRoom?.copyWith.call(
          messagesCount: hiveRoom.messagesCount + 1,
        ) ??
        HiveRoom(name: room, messagesCount: 1);
    await box.put(room.toHiveKey(), hiveRoom);
    final messagesBox = await _getMessagesBox(room);
    await messagesBox.add(message);
    _roomsMap[room] = _roomsMap[room]?.let(
          (it) => it.copyWith.call(
            messages: it.messages
              ..add(message)
              ..sortMessages(),
            messagesCount: hiveRoom!.messagesCount,
          ),
        ) ??
        Room(
          messagesCount: hiveRoom.messagesCount,
          messages: [message],
          name: room,
        );
    _emit();
  }

  @override
  Future<void> saveMessages({required String room, required List<Message> messages}) async {
    final box = await _roomInfoBox;
    var hiveRoom = box.get(room.toHiveKey());
    hiveRoom = hiveRoom?.copyWith.call(
          messagesCount: hiveRoom.messagesCount + messages.length,
        ) ??
        HiveRoom(name: room, messagesCount: messages.length);
    await box.put(room.toHiveKey(), hiveRoom);
    final messagesBox = await _getMessagesBox(room);
    await messagesBox.addAll(messages);
    _roomsMap[room] = _roomsMap[room].let(
      (it) => it!.copyWith.call(
        messages: it.messages
          ..addAll(messages)
          ..sortMessages(),
        messagesCount: hiveRoom!.messagesCount,
      ),
    );
    _emit();
  }

  @override
  Future<void> removeAllAndSaveMessages({
    required String room,
    required List<Message> messages,
  }) async {
    final box = await _roomInfoBox;
    final hiveRoom = box.get(room);
    await box.put(
      room.toHiveKey(),
      HiveRoom(name: room, messagesCount: messages.length),
    );
    final messagesBox = await _getMessagesBox(room);
    // Delete all old messages
    for (var i = 0; i < (hiveRoom?.messagesCount ?? 0); i++) {
      await messagesBox.deleteAt(0);
    }
    await messagesBox.addAll(messages);
    _roomsMap[room] = Room(
      messages: messages,
      messagesCount: messages.length,
      name: room,
    );
    _emit();
  }

  @override
  Future<void> saveRoom(Room room) async {
    final box = await _roomInfoBox;
    await box.put(
      room.name.toHiveKey(),
      HiveRoom(name: room.name, messagesCount: room.messages.length),
    );
    final messagesBox = await _getMessagesBox(room.name);
    await messagesBox.addAll(room.messages);
    _roomsMap[room.name] = room;
    _emit();
  }

  @override
  Future<void> dispose() async {
    await _roomInfoBox.ifLaunched(() => _roomInfoBox.then((value) => value.close()));
    return super.dispose();
  }
}
