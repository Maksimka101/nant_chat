// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call(
      {required List<Message> messages,
      required int messagesCount,
      required String name}) {
    return _Room(
      messages: messages,
      messagesCount: messagesCount,
      name: name,
    );
  }
}

/// @nodoc
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  List<Message> get messages => throw _privateConstructorUsedError;
  int get messagesCount => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call({List<Message> messages, int messagesCount, String name});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? messagesCount = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      messagesCount: messagesCount == freezed
          ? _value.messagesCount
          : messagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call({List<Message> messages, int messagesCount, String name});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object? messages = freezed,
    Object? messagesCount = freezed,
    Object? name = freezed,
  }) {
    return _then(_Room(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      messagesCount: messagesCount == freezed
          ? _value.messagesCount
          : messagesCount // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Room implements _Room {
  const _$_Room(
      {required this.messages,
      required this.messagesCount,
      required this.name});

  @override
  final List<Message> messages;
  @override
  final int messagesCount;
  @override
  final String name;

  @override
  String toString() {
    return 'Room(messages: $messages, messagesCount: $messagesCount, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Room &&
            const DeepCollectionEquality().equals(other.messages, messages) &&
            (identical(other.messagesCount, messagesCount) ||
                other.messagesCount == messagesCount) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(messages), messagesCount, name);

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);
}

abstract class _Room implements Room {
  const factory _Room(
      {required List<Message> messages,
      required int messagesCount,
      required String name}) = _$_Room;

  @override
  List<Message> get messages;
  @override
  int get messagesCount;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateRoomTearOff {
  const _$CreateRoomTearOff();

  _CreateRoom call({required String name, required CreateMessage initMessage}) {
    return _CreateRoom(
      name: name,
      initMessage: initMessage,
    );
  }
}

/// @nodoc
const $CreateRoom = _$CreateRoomTearOff();

/// @nodoc
mixin _$CreateRoom {
  String get name => throw _privateConstructorUsedError;
  CreateMessage get initMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRoomCopyWith<CreateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomCopyWith<$Res> {
  factory $CreateRoomCopyWith(
          CreateRoom value, $Res Function(CreateRoom) then) =
      _$CreateRoomCopyWithImpl<$Res>;
  $Res call({String name, CreateMessage initMessage});

  $CreateMessageCopyWith<$Res> get initMessage;
}

/// @nodoc
class _$CreateRoomCopyWithImpl<$Res> implements $CreateRoomCopyWith<$Res> {
  _$CreateRoomCopyWithImpl(this._value, this._then);

  final CreateRoom _value;
  // ignore: unused_field
  final $Res Function(CreateRoom) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? initMessage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      initMessage: initMessage == freezed
          ? _value.initMessage
          : initMessage // ignore: cast_nullable_to_non_nullable
              as CreateMessage,
    ));
  }

  @override
  $CreateMessageCopyWith<$Res> get initMessage {
    return $CreateMessageCopyWith<$Res>(_value.initMessage, (value) {
      return _then(_value.copyWith(initMessage: value));
    });
  }
}

/// @nodoc
abstract class _$CreateRoomCopyWith<$Res> implements $CreateRoomCopyWith<$Res> {
  factory _$CreateRoomCopyWith(
          _CreateRoom value, $Res Function(_CreateRoom) then) =
      __$CreateRoomCopyWithImpl<$Res>;
  @override
  $Res call({String name, CreateMessage initMessage});

  @override
  $CreateMessageCopyWith<$Res> get initMessage;
}

/// @nodoc
class __$CreateRoomCopyWithImpl<$Res> extends _$CreateRoomCopyWithImpl<$Res>
    implements _$CreateRoomCopyWith<$Res> {
  __$CreateRoomCopyWithImpl(
      _CreateRoom _value, $Res Function(_CreateRoom) _then)
      : super(_value, (v) => _then(v as _CreateRoom));

  @override
  _CreateRoom get _value => super._value as _CreateRoom;

  @override
  $Res call({
    Object? name = freezed,
    Object? initMessage = freezed,
  }) {
    return _then(_CreateRoom(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      initMessage: initMessage == freezed
          ? _value.initMessage
          : initMessage // ignore: cast_nullable_to_non_nullable
              as CreateMessage,
    ));
  }
}

/// @nodoc

class _$_CreateRoom implements _CreateRoom {
  const _$_CreateRoom({required this.name, required this.initMessage});

  @override
  final String name;
  @override
  final CreateMessage initMessage;

  @override
  String toString() {
    return 'CreateRoom(name: $name, initMessage: $initMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRoom &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.initMessage, initMessage) ||
                other.initMessage == initMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, initMessage);

  @JsonKey(ignore: true)
  @override
  _$CreateRoomCopyWith<_CreateRoom> get copyWith =>
      __$CreateRoomCopyWithImpl<_CreateRoom>(this, _$identity);
}

abstract class _CreateRoom implements CreateRoom {
  const factory _CreateRoom(
      {required String name,
      required CreateMessage initMessage}) = _$_CreateRoom;

  @override
  String get name;
  @override
  CreateMessage get initMessage;
  @override
  @JsonKey(ignore: true)
  _$CreateRoomCopyWith<_CreateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateRoomTearOff {
  const _$UpdateRoomTearOff();

  _UpdateRoom call({required String name, required Message lastMessage}) {
    return _UpdateRoom(
      name: name,
      lastMessage: lastMessage,
    );
  }
}

/// @nodoc
const $UpdateRoom = _$UpdateRoomTearOff();

/// @nodoc
mixin _$UpdateRoom {
  String get name => throw _privateConstructorUsedError;
  Message get lastMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateRoomCopyWith<UpdateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateRoomCopyWith<$Res> {
  factory $UpdateRoomCopyWith(
          UpdateRoom value, $Res Function(UpdateRoom) then) =
      _$UpdateRoomCopyWithImpl<$Res>;
  $Res call({String name, Message lastMessage});

  $MessageCopyWith<$Res> get lastMessage;
}

/// @nodoc
class _$UpdateRoomCopyWithImpl<$Res> implements $UpdateRoomCopyWith<$Res> {
  _$UpdateRoomCopyWithImpl(this._value, this._then);

  final UpdateRoom _value;
  // ignore: unused_field
  final $Res Function(UpdateRoom) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get lastMessage {
    return $MessageCopyWith<$Res>(_value.lastMessage, (value) {
      return _then(_value.copyWith(lastMessage: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateRoomCopyWith<$Res> implements $UpdateRoomCopyWith<$Res> {
  factory _$UpdateRoomCopyWith(
          _UpdateRoom value, $Res Function(_UpdateRoom) then) =
      __$UpdateRoomCopyWithImpl<$Res>;
  @override
  $Res call({String name, Message lastMessage});

  @override
  $MessageCopyWith<$Res> get lastMessage;
}

/// @nodoc
class __$UpdateRoomCopyWithImpl<$Res> extends _$UpdateRoomCopyWithImpl<$Res>
    implements _$UpdateRoomCopyWith<$Res> {
  __$UpdateRoomCopyWithImpl(
      _UpdateRoom _value, $Res Function(_UpdateRoom) _then)
      : super(_value, (v) => _then(v as _UpdateRoom));

  @override
  _UpdateRoom get _value => super._value as _UpdateRoom;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_UpdateRoom(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_UpdateRoom implements _UpdateRoom {
  const _$_UpdateRoom({required this.name, required this.lastMessage});

  @override
  final String name;
  @override
  final Message lastMessage;

  @override
  String toString() {
    return 'UpdateRoom(name: $name, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateRoom &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, lastMessage);

  @JsonKey(ignore: true)
  @override
  _$UpdateRoomCopyWith<_UpdateRoom> get copyWith =>
      __$UpdateRoomCopyWithImpl<_UpdateRoom>(this, _$identity);
}

abstract class _UpdateRoom implements UpdateRoom {
  const factory _UpdateRoom(
      {required String name, required Message lastMessage}) = _$_UpdateRoom;

  @override
  String get name;
  @override
  Message get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$UpdateRoomCopyWith<_UpdateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
