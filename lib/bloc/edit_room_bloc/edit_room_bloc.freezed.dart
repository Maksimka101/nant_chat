// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditRoomBlocEventTearOff {
  const _$EditRoomBlocEventTearOff();

  NextPageRequested nextPageRequested({required String roomName}) {
    return NextPageRequested(
      roomName: roomName,
    );
  }

  MessageSent messageSent(
      {required String roomName, required CreateMessage createMessage}) {
    return MessageSent(
      roomName: roomName,
      createMessage: createMessage,
    );
  }

  NewRoomCreated newRoomCreated({required CreateRoom createRoom}) {
    return NewRoomCreated(
      createRoom: createRoom,
    );
  }
}

/// @nodoc
const $EditRoomBlocEvent = _$EditRoomBlocEventTearOff();

/// @nodoc
mixin _$EditRoomBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) nextPageRequested,
    required TResult Function(String roomName, CreateMessage createMessage)
        messageSent,
    required TResult Function(CreateRoom createRoom) newRoomCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPageRequested value) nextPageRequested,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(NewRoomCreated value) newRoomCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRoomBlocEventCopyWith<$Res> {
  factory $EditRoomBlocEventCopyWith(
          EditRoomBlocEvent value, $Res Function(EditRoomBlocEvent) then) =
      _$EditRoomBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditRoomBlocEventCopyWithImpl<$Res>
    implements $EditRoomBlocEventCopyWith<$Res> {
  _$EditRoomBlocEventCopyWithImpl(this._value, this._then);

  final EditRoomBlocEvent _value;
  // ignore: unused_field
  final $Res Function(EditRoomBlocEvent) _then;
}

/// @nodoc
abstract class $NextPageRequestedCopyWith<$Res> {
  factory $NextPageRequestedCopyWith(
          NextPageRequested value, $Res Function(NextPageRequested) then) =
      _$NextPageRequestedCopyWithImpl<$Res>;
  $Res call({String roomName});
}

/// @nodoc
class _$NextPageRequestedCopyWithImpl<$Res>
    extends _$EditRoomBlocEventCopyWithImpl<$Res>
    implements $NextPageRequestedCopyWith<$Res> {
  _$NextPageRequestedCopyWithImpl(
      NextPageRequested _value, $Res Function(NextPageRequested) _then)
      : super(_value, (v) => _then(v as NextPageRequested));

  @override
  NextPageRequested get _value => super._value as NextPageRequested;

  @override
  $Res call({
    Object? roomName = freezed,
  }) {
    return _then(NextPageRequested(
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NextPageRequested implements NextPageRequested {
  const _$NextPageRequested({required this.roomName});

  @override
  final String roomName;

  @override
  String toString() {
    return 'EditRoomBlocEvent.nextPageRequested(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NextPageRequested &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomName);

  @JsonKey(ignore: true)
  @override
  $NextPageRequestedCopyWith<NextPageRequested> get copyWith =>
      _$NextPageRequestedCopyWithImpl<NextPageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) nextPageRequested,
    required TResult Function(String roomName, CreateMessage createMessage)
        messageSent,
    required TResult Function(CreateRoom createRoom) newRoomCreated,
  }) {
    return nextPageRequested(roomName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
  }) {
    return nextPageRequested?.call(roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
    required TResult orElse(),
  }) {
    if (nextPageRequested != null) {
      return nextPageRequested(roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPageRequested value) nextPageRequested,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(NewRoomCreated value) newRoomCreated,
  }) {
    return nextPageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
  }) {
    return nextPageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
    required TResult orElse(),
  }) {
    if (nextPageRequested != null) {
      return nextPageRequested(this);
    }
    return orElse();
  }
}

abstract class NextPageRequested implements EditRoomBlocEvent {
  const factory NextPageRequested({required String roomName}) =
      _$NextPageRequested;

  String get roomName;
  @JsonKey(ignore: true)
  $NextPageRequestedCopyWith<NextPageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSentCopyWith<$Res> {
  factory $MessageSentCopyWith(
          MessageSent value, $Res Function(MessageSent) then) =
      _$MessageSentCopyWithImpl<$Res>;
  $Res call({String roomName, CreateMessage createMessage});

  $CreateMessageCopyWith<$Res> get createMessage;
}

/// @nodoc
class _$MessageSentCopyWithImpl<$Res>
    extends _$EditRoomBlocEventCopyWithImpl<$Res>
    implements $MessageSentCopyWith<$Res> {
  _$MessageSentCopyWithImpl(
      MessageSent _value, $Res Function(MessageSent) _then)
      : super(_value, (v) => _then(v as MessageSent));

  @override
  MessageSent get _value => super._value as MessageSent;

  @override
  $Res call({
    Object? roomName = freezed,
    Object? createMessage = freezed,
  }) {
    return _then(MessageSent(
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      createMessage: createMessage == freezed
          ? _value.createMessage
          : createMessage // ignore: cast_nullable_to_non_nullable
              as CreateMessage,
    ));
  }

  @override
  $CreateMessageCopyWith<$Res> get createMessage {
    return $CreateMessageCopyWith<$Res>(_value.createMessage, (value) {
      return _then(_value.copyWith(createMessage: value));
    });
  }
}

/// @nodoc

class _$MessageSent implements MessageSent {
  const _$MessageSent({required this.roomName, required this.createMessage});

  @override
  final String roomName;
  @override
  final CreateMessage createMessage;

  @override
  String toString() {
    return 'EditRoomBlocEvent.messageSent(roomName: $roomName, createMessage: $createMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageSent &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName) &&
            (identical(other.createMessage, createMessage) ||
                other.createMessage == createMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomName, createMessage);

  @JsonKey(ignore: true)
  @override
  $MessageSentCopyWith<MessageSent> get copyWith =>
      _$MessageSentCopyWithImpl<MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) nextPageRequested,
    required TResult Function(String roomName, CreateMessage createMessage)
        messageSent,
    required TResult Function(CreateRoom createRoom) newRoomCreated,
  }) {
    return messageSent(roomName, createMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
  }) {
    return messageSent?.call(roomName, createMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(roomName, createMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPageRequested value) nextPageRequested,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(NewRoomCreated value) newRoomCreated,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements EditRoomBlocEvent {
  const factory MessageSent(
      {required String roomName,
      required CreateMessage createMessage}) = _$MessageSent;

  String get roomName;
  CreateMessage get createMessage;
  @JsonKey(ignore: true)
  $MessageSentCopyWith<MessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRoomCreatedCopyWith<$Res> {
  factory $NewRoomCreatedCopyWith(
          NewRoomCreated value, $Res Function(NewRoomCreated) then) =
      _$NewRoomCreatedCopyWithImpl<$Res>;
  $Res call({CreateRoom createRoom});

  $CreateRoomCopyWith<$Res> get createRoom;
}

/// @nodoc
class _$NewRoomCreatedCopyWithImpl<$Res>
    extends _$EditRoomBlocEventCopyWithImpl<$Res>
    implements $NewRoomCreatedCopyWith<$Res> {
  _$NewRoomCreatedCopyWithImpl(
      NewRoomCreated _value, $Res Function(NewRoomCreated) _then)
      : super(_value, (v) => _then(v as NewRoomCreated));

  @override
  NewRoomCreated get _value => super._value as NewRoomCreated;

  @override
  $Res call({
    Object? createRoom = freezed,
  }) {
    return _then(NewRoomCreated(
      createRoom: createRoom == freezed
          ? _value.createRoom
          : createRoom // ignore: cast_nullable_to_non_nullable
              as CreateRoom,
    ));
  }

  @override
  $CreateRoomCopyWith<$Res> get createRoom {
    return $CreateRoomCopyWith<$Res>(_value.createRoom, (value) {
      return _then(_value.copyWith(createRoom: value));
    });
  }
}

/// @nodoc

class _$NewRoomCreated implements NewRoomCreated {
  const _$NewRoomCreated({required this.createRoom});

  @override
  final CreateRoom createRoom;

  @override
  String toString() {
    return 'EditRoomBlocEvent.newRoomCreated(createRoom: $createRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewRoomCreated &&
            (identical(other.createRoom, createRoom) ||
                other.createRoom == createRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createRoom);

  @JsonKey(ignore: true)
  @override
  $NewRoomCreatedCopyWith<NewRoomCreated> get copyWith =>
      _$NewRoomCreatedCopyWithImpl<NewRoomCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) nextPageRequested,
    required TResult Function(String roomName, CreateMessage createMessage)
        messageSent,
    required TResult Function(CreateRoom createRoom) newRoomCreated,
  }) {
    return newRoomCreated(createRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
  }) {
    return newRoomCreated?.call(createRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? nextPageRequested,
    TResult Function(String roomName, CreateMessage createMessage)? messageSent,
    TResult Function(CreateRoom createRoom)? newRoomCreated,
    required TResult orElse(),
  }) {
    if (newRoomCreated != null) {
      return newRoomCreated(createRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPageRequested value) nextPageRequested,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(NewRoomCreated value) newRoomCreated,
  }) {
    return newRoomCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
  }) {
    return newRoomCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPageRequested value)? nextPageRequested,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(NewRoomCreated value)? newRoomCreated,
    required TResult orElse(),
  }) {
    if (newRoomCreated != null) {
      return newRoomCreated(this);
    }
    return orElse();
  }
}

abstract class NewRoomCreated implements EditRoomBlocEvent {
  const factory NewRoomCreated({required CreateRoom createRoom}) =
      _$NewRoomCreated;

  CreateRoom get createRoom;
  @JsonKey(ignore: true)
  $NewRoomCreatedCopyWith<NewRoomCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditRoomBlocStateTearOff {
  const _$EditRoomBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  NewRoomCreationStarted newRoomCreationStarted() {
    return const NewRoomCreationStarted();
  }

  NewRoomCreatedSuccessful newRoomCreatedSuccessful(String roomName) {
    return NewRoomCreatedSuccessful(
      roomName,
    );
  }

  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
const $EditRoomBlocState = _$EditRoomBlocStateTearOff();

/// @nodoc
mixin _$EditRoomBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newRoomCreationStarted,
    required TResult Function(String roomName) newRoomCreatedSuccessful,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewRoomCreationStarted value)
        newRoomCreationStarted,
    required TResult Function(NewRoomCreatedSuccessful value)
        newRoomCreatedSuccessful,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditRoomBlocStateCopyWith<$Res> {
  factory $EditRoomBlocStateCopyWith(
          EditRoomBlocState value, $Res Function(EditRoomBlocState) then) =
      _$EditRoomBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditRoomBlocStateCopyWithImpl<$Res>
    implements $EditRoomBlocStateCopyWith<$Res> {
  _$EditRoomBlocStateCopyWithImpl(this._value, this._then);

  final EditRoomBlocState _value;
  // ignore: unused_field
  final $Res Function(EditRoomBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$EditRoomBlocStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'EditRoomBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newRoomCreationStarted,
    required TResult Function(String roomName) newRoomCreatedSuccessful,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewRoomCreationStarted value)
        newRoomCreationStarted,
    required TResult Function(NewRoomCreatedSuccessful value)
        newRoomCreatedSuccessful,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditRoomBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $NewRoomCreationStartedCopyWith<$Res> {
  factory $NewRoomCreationStartedCopyWith(NewRoomCreationStarted value,
          $Res Function(NewRoomCreationStarted) then) =
      _$NewRoomCreationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewRoomCreationStartedCopyWithImpl<$Res>
    extends _$EditRoomBlocStateCopyWithImpl<$Res>
    implements $NewRoomCreationStartedCopyWith<$Res> {
  _$NewRoomCreationStartedCopyWithImpl(NewRoomCreationStarted _value,
      $Res Function(NewRoomCreationStarted) _then)
      : super(_value, (v) => _then(v as NewRoomCreationStarted));

  @override
  NewRoomCreationStarted get _value => super._value as NewRoomCreationStarted;
}

/// @nodoc

class _$NewRoomCreationStarted implements NewRoomCreationStarted {
  const _$NewRoomCreationStarted();

  @override
  String toString() {
    return 'EditRoomBlocState.newRoomCreationStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewRoomCreationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newRoomCreationStarted,
    required TResult Function(String roomName) newRoomCreatedSuccessful,
    required TResult Function(String message) error,
  }) {
    return newRoomCreationStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
  }) {
    return newRoomCreationStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (newRoomCreationStarted != null) {
      return newRoomCreationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewRoomCreationStarted value)
        newRoomCreationStarted,
    required TResult Function(NewRoomCreatedSuccessful value)
        newRoomCreatedSuccessful,
    required TResult Function(Error value) error,
  }) {
    return newRoomCreationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
  }) {
    return newRoomCreationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (newRoomCreationStarted != null) {
      return newRoomCreationStarted(this);
    }
    return orElse();
  }
}

abstract class NewRoomCreationStarted implements EditRoomBlocState {
  const factory NewRoomCreationStarted() = _$NewRoomCreationStarted;
}

/// @nodoc
abstract class $NewRoomCreatedSuccessfulCopyWith<$Res> {
  factory $NewRoomCreatedSuccessfulCopyWith(NewRoomCreatedSuccessful value,
          $Res Function(NewRoomCreatedSuccessful) then) =
      _$NewRoomCreatedSuccessfulCopyWithImpl<$Res>;
  $Res call({String roomName});
}

/// @nodoc
class _$NewRoomCreatedSuccessfulCopyWithImpl<$Res>
    extends _$EditRoomBlocStateCopyWithImpl<$Res>
    implements $NewRoomCreatedSuccessfulCopyWith<$Res> {
  _$NewRoomCreatedSuccessfulCopyWithImpl(NewRoomCreatedSuccessful _value,
      $Res Function(NewRoomCreatedSuccessful) _then)
      : super(_value, (v) => _then(v as NewRoomCreatedSuccessful));

  @override
  NewRoomCreatedSuccessful get _value =>
      super._value as NewRoomCreatedSuccessful;

  @override
  $Res call({
    Object? roomName = freezed,
  }) {
    return _then(NewRoomCreatedSuccessful(
      roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewRoomCreatedSuccessful implements NewRoomCreatedSuccessful {
  const _$NewRoomCreatedSuccessful(this.roomName);

  @override
  final String roomName;

  @override
  String toString() {
    return 'EditRoomBlocState.newRoomCreatedSuccessful(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewRoomCreatedSuccessful &&
            (identical(other.roomName, roomName) ||
                other.roomName == roomName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomName);

  @JsonKey(ignore: true)
  @override
  $NewRoomCreatedSuccessfulCopyWith<NewRoomCreatedSuccessful> get copyWith =>
      _$NewRoomCreatedSuccessfulCopyWithImpl<NewRoomCreatedSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newRoomCreationStarted,
    required TResult Function(String roomName) newRoomCreatedSuccessful,
    required TResult Function(String message) error,
  }) {
    return newRoomCreatedSuccessful(roomName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
  }) {
    return newRoomCreatedSuccessful?.call(roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (newRoomCreatedSuccessful != null) {
      return newRoomCreatedSuccessful(roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewRoomCreationStarted value)
        newRoomCreationStarted,
    required TResult Function(NewRoomCreatedSuccessful value)
        newRoomCreatedSuccessful,
    required TResult Function(Error value) error,
  }) {
    return newRoomCreatedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
  }) {
    return newRoomCreatedSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (newRoomCreatedSuccessful != null) {
      return newRoomCreatedSuccessful(this);
    }
    return orElse();
  }
}

abstract class NewRoomCreatedSuccessful implements EditRoomBlocState {
  const factory NewRoomCreatedSuccessful(String roomName) =
      _$NewRoomCreatedSuccessful;

  String get roomName;
  @JsonKey(ignore: true)
  $NewRoomCreatedSuccessfulCopyWith<NewRoomCreatedSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$EditRoomBlocStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'EditRoomBlocState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() newRoomCreationStarted,
    required TResult Function(String roomName) newRoomCreatedSuccessful,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? newRoomCreationStarted,
    TResult Function(String roomName)? newRoomCreatedSuccessful,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NewRoomCreationStarted value)
        newRoomCreationStarted,
    required TResult Function(NewRoomCreatedSuccessful value)
        newRoomCreatedSuccessful,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NewRoomCreationStarted value)? newRoomCreationStarted,
    TResult Function(NewRoomCreatedSuccessful value)? newRoomCreatedSuccessful,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements EditRoomBlocState {
  const factory Error(String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
