import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:nant_client/models/chat_user/chat_user.dart';
import 'package:nant_client/models/message/message.dart';
import 'package:nant_client/models/room/room.dart';
import 'package:nant_client/models/user/user.dart';
import 'package:nant_client/repository/new_messages_repository/nane_new_messages_repository/nane_new_messages_repository.dart';
import 'package:nant_client/repository/room_repository/common_rooms_repository/common_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/hive_local_rooms_repository/hive_local_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/mock_web_rooms_repository/mock_web_rooms_repository.dart';
import 'package:nant_client/repository/room_repository/room_repository.dart';
import 'package:nant_client/repository/user_repository/mock_user_repository/mock_user_repository.dart';
import 'package:nant_client/repository/web_socket_repository/mock_web_socket_repository/mock_web_socket_factory.dart';
import 'package:nant_client/repository/web_socket_repository/mock_web_socket_repository/mock_web_socket_repository.dart';
import 'package:nant_client/utils/hive/hive_initializer.dart';

void main() {
  group("Test room repository", () {
    RoomsRepository roomsRepository;
    final mockWebSocketRepository = MockWebSocketRepository<Map>('', false);
    final mockWebSocketRepositoryFactory = MockWebSocketRepositoryFactory(
      mockWebSocketRepository: mockWebSocketRepository,
    );
    final MockUserRepository mockUserRepository = MockUserRepository();
    final mockWebRoomsRepository = MockWebRoomsRepository();

    setUp(() async {
      await HiveInitializer.initializeMockHive();
      await Hive.deleteFromDisk();
      mockUserRepository.user = const User(name: 'mock user');
      mockWebSocketRepository.onAdd = (map) => null;
      roomsRepository = CommonRoomsRepository(
        paginationSize: 100,
        webRepository: mockWebRoomsRepository,
        localRepository: HiveLocalRoomsRepository(
          paginationSize: 100,
        ),
        messagesRepository: NaneMessagesRepository(
          webSocketFactory: mockWebSocketRepositoryFactory,
          wsHost: '',
          userRepository: mockUserRepository,
        ),
      );
      await roomsRepository.initialize();
    });

    test("Create room", () async {
      final createRoom = CreateRoom(
        name: 'test',
        initMessage: CreateMessage(
          text: 'test message',
          createdAt: DateTime.now().toUtc(),
        ),
      );
      final sender = ChatUser(name: mockUserRepository.data.name);
      final initMessage = Message(
        createdAt: createRoom.initMessage.createdAt,
        text: createRoom.initMessage.text,
        sender: sender,
      );
      mockWebRoomsRepository.onLoadRoomMessages = (room) => [initMessage];
      mockWebSocketRepository.onAdd = (map) => map.cast<String, dynamic>()
        ..addAll(<String, dynamic>{
          'created': createRoom.initMessage.createdAt.toString(),
          "sender": {"username": sender.name},
        });

      final roomsFuture = roomsRepository.dataStream.first;
      await roomsRepository.createRoom(createRoom);
      final rooms = await roomsFuture;

      expect(rooms.length, 1);
      final room = rooms.first;
      expect(room.name, createRoom.name);
      expect(room.messages, [initMessage]);

      final fullRoomsFuture = roomsRepository.dataStream.first;
      await roomsRepository.loadNextPage(room.name);
      final fullRooms = await fullRoomsFuture;
      final fullRoom = fullRooms.first;

      expect(fullRooms.length, 1);
      expect(fullRoom.messages, [initMessage]);
    });

    test("Send message", () async {
      final createRoom = CreateRoom(
        name: 'test',
        initMessage: CreateMessage(
          text: 'test message',
          createdAt: DateTime.now().toUtc(),
        ),
      );
      final sender = ChatUser(name: mockUserRepository.data.name);
      const receiver = ChatUser(name: 'mock receiver');
      final initMessage = Message(
        createdAt: createRoom.initMessage.createdAt,
        text: createRoom.initMessage.text,
        sender: sender,
      );
      final responseMessage = Message(
        text: 'test response',
        createdAt: DateTime.now().add(const Duration(seconds: 1)).toUtc(),
        sender: receiver,
      );

      mockWebRoomsRepository.onLoadRoomMessages = (room) => [initMessage];
      mockWebSocketRepository.onAdd = (_) => {
            "room": createRoom.name,
            'created': responseMessage.createdAt.toString(),
            'sender': {
              'username': receiver.name,
            },
            'text': responseMessage.text,
          };

      var roomsFuture = roomsRepository.dataStream.first;
      await roomsRepository.createRoom(createRoom);
      await roomsFuture;
      roomsFuture = roomsRepository.dataStream.first;
      final rooms = await roomsFuture;

      expect(rooms.length, 1);
      final room = rooms.first;
      expect(room.name, createRoom.name);
      expect(room.messages, [initMessage, responseMessage]);
    });
  });
}
