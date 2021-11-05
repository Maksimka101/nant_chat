// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {@HiveField(0) required String text,
      @HiveField(1) required DateTime createdAt,
      @HiveField(2) required ChatUser sender}) {
    return _Message(
      text: text,
      createdAt: createdAt,
      sender: sender,
    );
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  @HiveField(0)
  String get text => throw _privateConstructorUsedError;
  @HiveField(1)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(2)
  ChatUser get sender => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) DateTime createdAt,
      @HiveField(2) ChatUser sender});

  $ChatUserCopyWith<$Res> get sender;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatUser,
    ));
  }

  @override
  $ChatUserCopyWith<$Res> get sender {
    return $ChatUserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String text,
      @HiveField(1) DateTime createdAt,
      @HiveField(2) ChatUser sender});

  @override
  $ChatUserCopyWith<$Res> get sender;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
  }) {
    return _then(_Message(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatUser,
    ));
  }
}

/// @nodoc

class _$_Message implements _Message {
  const _$_Message(
      {@HiveField(0) required this.text,
      @HiveField(1) required this.createdAt,
      @HiveField(2) required this.sender});

  @override
  @HiveField(0)
  final String text;
  @override
  @HiveField(1)
  final DateTime createdAt;
  @override
  @HiveField(2)
  final ChatUser sender;

  @override
  String toString() {
    return 'Message(text: $text, createdAt: $createdAt, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, createdAt, sender);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message implements Message {
  const factory _Message(
      {@HiveField(0) required String text,
      @HiveField(1) required DateTime createdAt,
      @HiveField(2) required ChatUser sender}) = _$_Message;

  @override
  @HiveField(0)
  String get text;
  @override
  @HiveField(1)
  DateTime get createdAt;
  @override
  @HiveField(2)
  ChatUser get sender;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReceivedMessageTearOff {
  const _$ReceivedMessageTearOff();

  _ReceivedMessage call({required String room, required Message message}) {
    return _ReceivedMessage(
      room: room,
      message: message,
    );
  }
}

/// @nodoc
const $ReceivedMessage = _$ReceivedMessageTearOff();

/// @nodoc
mixin _$ReceivedMessage {
  String get room => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceivedMessageCopyWith<ReceivedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceivedMessageCopyWith<$Res> {
  factory $ReceivedMessageCopyWith(
          ReceivedMessage value, $Res Function(ReceivedMessage) then) =
      _$ReceivedMessageCopyWithImpl<$Res>;
  $Res call({String room, Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$ReceivedMessageCopyWithImpl<$Res>
    implements $ReceivedMessageCopyWith<$Res> {
  _$ReceivedMessageCopyWithImpl(this._value, this._then);

  final ReceivedMessage _value;
  // ignore: unused_field
  final $Res Function(ReceivedMessage) _then;

  @override
  $Res call({
    Object? room = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$ReceivedMessageCopyWith<$Res>
    implements $ReceivedMessageCopyWith<$Res> {
  factory _$ReceivedMessageCopyWith(
          _ReceivedMessage value, $Res Function(_ReceivedMessage) then) =
      __$ReceivedMessageCopyWithImpl<$Res>;
  @override
  $Res call({String room, Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$ReceivedMessageCopyWithImpl<$Res>
    extends _$ReceivedMessageCopyWithImpl<$Res>
    implements _$ReceivedMessageCopyWith<$Res> {
  __$ReceivedMessageCopyWithImpl(
      _ReceivedMessage _value, $Res Function(_ReceivedMessage) _then)
      : super(_value, (v) => _then(v as _ReceivedMessage));

  @override
  _ReceivedMessage get _value => super._value as _ReceivedMessage;

  @override
  $Res call({
    Object? room = freezed,
    Object? message = freezed,
  }) {
    return _then(_ReceivedMessage(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc

class _$_ReceivedMessage implements _ReceivedMessage {
  const _$_ReceivedMessage({required this.room, required this.message});

  @override
  final String room;
  @override
  final Message message;

  @override
  String toString() {
    return 'ReceivedMessage(room: $room, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceivedMessage &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room, message);

  @JsonKey(ignore: true)
  @override
  _$ReceivedMessageCopyWith<_ReceivedMessage> get copyWith =>
      __$ReceivedMessageCopyWithImpl<_ReceivedMessage>(this, _$identity);
}

abstract class _ReceivedMessage implements ReceivedMessage {
  const factory _ReceivedMessage(
      {required String room, required Message message}) = _$_ReceivedMessage;

  @override
  String get room;
  @override
  Message get message;
  @override
  @JsonKey(ignore: true)
  _$ReceivedMessageCopyWith<_ReceivedMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateMessageTearOff {
  const _$CreateMessageTearOff();

  _CreateMessage call({required String text, required DateTime createdAt}) {
    return _CreateMessage(
      text: text,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $CreateMessage = _$CreateMessageTearOff();

/// @nodoc
mixin _$CreateMessage {
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMessageCopyWith<CreateMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMessageCopyWith<$Res> {
  factory $CreateMessageCopyWith(
          CreateMessage value, $Res Function(CreateMessage) then) =
      _$CreateMessageCopyWithImpl<$Res>;
  $Res call({String text, DateTime createdAt});
}

/// @nodoc
class _$CreateMessageCopyWithImpl<$Res>
    implements $CreateMessageCopyWith<$Res> {
  _$CreateMessageCopyWithImpl(this._value, this._then);

  final CreateMessage _value;
  // ignore: unused_field
  final $Res Function(CreateMessage) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CreateMessageCopyWith<$Res>
    implements $CreateMessageCopyWith<$Res> {
  factory _$CreateMessageCopyWith(
          _CreateMessage value, $Res Function(_CreateMessage) then) =
      __$CreateMessageCopyWithImpl<$Res>;
  @override
  $Res call({String text, DateTime createdAt});
}

/// @nodoc
class __$CreateMessageCopyWithImpl<$Res>
    extends _$CreateMessageCopyWithImpl<$Res>
    implements _$CreateMessageCopyWith<$Res> {
  __$CreateMessageCopyWithImpl(
      _CreateMessage _value, $Res Function(_CreateMessage) _then)
      : super(_value, (v) => _then(v as _CreateMessage));

  @override
  _CreateMessage get _value => super._value as _CreateMessage;

  @override
  $Res call({
    Object? text = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_CreateMessage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_CreateMessage implements _CreateMessage {
  const _$_CreateMessage({required this.text, required this.createdAt});

  @override
  final String text;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CreateMessage(text: $text, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateMessage &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, createdAt);

  @JsonKey(ignore: true)
  @override
  _$CreateMessageCopyWith<_CreateMessage> get copyWith =>
      __$CreateMessageCopyWithImpl<_CreateMessage>(this, _$identity);
}

abstract class _CreateMessage implements CreateMessage {
  const factory _CreateMessage(
      {required String text, required DateTime createdAt}) = _$_CreateMessage;

  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$CreateMessageCopyWith<_CreateMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
