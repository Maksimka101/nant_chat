// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditRoomBlocEventTearOff {
  const _$EditRoomBlocEventTearOff();

// ignore: unused_element
  NextPageRequested nextPageRequested({@required String roomName}) {
    return NextPageRequested(
      roomName: roomName,
    );
  }

// ignore: unused_element
  MessageSent messageSent(
      {@required String roomName, @required CreateMessage createMessage}) {
    return MessageSent(
      roomName: roomName,
      createMessage: createMessage,
    );
  }

// ignore: unused_element
  NewRoomCreated newRoomCreated({@required CreateRoom createRoom}) {
    return NewRoomCreated(
      createRoom: createRoom,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditRoomBlocEvent = _$EditRoomBlocEventTearOff();

/// @nodoc
mixin _$EditRoomBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nextPageRequested(String roomName),
    @required TResult messageSent(String roomName, CreateMessage createMessage),
    @required TResult newRoomCreated(CreateRoom createRoom),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nextPageRequested(String roomName),
    TResult messageSent(String roomName, CreateMessage createMessage),
    TResult newRoomCreated(CreateRoom createRoom),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nextPageRequested(NextPageRequested value),
    @required TResult messageSent(MessageSent value),
    @required TResult newRoomCreated(NewRoomCreated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nextPageRequested(NextPageRequested value),
    TResult messageSent(MessageSent value),
    TResult newRoomCreated(NewRoomCreated value),
    @required TResult orElse(),
  });
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
    Object roomName = freezed,
  }) {
    return _then(NextPageRequested(
      roomName: roomName == freezed ? _value.roomName : roomName as String,
    ));
  }
}

/// @nodoc
class _$NextPageRequested implements NextPageRequested {
  const _$NextPageRequested({@required this.roomName})
      : assert(roomName != null);

  @override
  final String roomName;

  @override
  String toString() {
    return 'EditRoomBlocEvent.nextPageRequested(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NextPageRequested &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomName);

  @JsonKey(ignore: true)
  @override
  $NextPageRequestedCopyWith<NextPageRequested> get copyWith =>
      _$NextPageRequestedCopyWithImpl<NextPageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nextPageRequested(String roomName),
    @required TResult messageSent(String roomName, CreateMessage createMessage),
    @required TResult newRoomCreated(CreateRoom createRoom),
  }) {
    assert(nextPageRequested != null);
    assert(messageSent != null);
    assert(newRoomCreated != null);
    return nextPageRequested(roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nextPageRequested(String roomName),
    TResult messageSent(String roomName, CreateMessage createMessage),
    TResult newRoomCreated(CreateRoom createRoom),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageRequested != null) {
      return nextPageRequested(roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nextPageRequested(NextPageRequested value),
    @required TResult messageSent(MessageSent value),
    @required TResult newRoomCreated(NewRoomCreated value),
  }) {
    assert(nextPageRequested != null);
    assert(messageSent != null);
    assert(newRoomCreated != null);
    return nextPageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nextPageRequested(NextPageRequested value),
    TResult messageSent(MessageSent value),
    TResult newRoomCreated(NewRoomCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageRequested != null) {
      return nextPageRequested(this);
    }
    return orElse();
  }
}

abstract class NextPageRequested implements EditRoomBlocEvent {
  const factory NextPageRequested({@required String roomName}) =
      _$NextPageRequested;

  String get roomName;
  @JsonKey(ignore: true)
  $NextPageRequestedCopyWith<NextPageRequested> get copyWith;
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
    Object roomName = freezed,
    Object createMessage = freezed,
  }) {
    return _then(MessageSent(
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      createMessage: createMessage == freezed
          ? _value.createMessage
          : createMessage as CreateMessage,
    ));
  }

  @override
  $CreateMessageCopyWith<$Res> get createMessage {
    if (_value.createMessage == null) {
      return null;
    }
    return $CreateMessageCopyWith<$Res>(_value.createMessage, (value) {
      return _then(_value.copyWith(createMessage: value));
    });
  }
}

/// @nodoc
class _$MessageSent implements MessageSent {
  const _$MessageSent({@required this.roomName, @required this.createMessage})
      : assert(roomName != null),
        assert(createMessage != null);

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
        (other is MessageSent &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)) &&
            (identical(other.createMessage, createMessage) ||
                const DeepCollectionEquality()
                    .equals(other.createMessage, createMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(roomName) ^
      const DeepCollectionEquality().hash(createMessage);

  @JsonKey(ignore: true)
  @override
  $MessageSentCopyWith<MessageSent> get copyWith =>
      _$MessageSentCopyWithImpl<MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nextPageRequested(String roomName),
    @required TResult messageSent(String roomName, CreateMessage createMessage),
    @required TResult newRoomCreated(CreateRoom createRoom),
  }) {
    assert(nextPageRequested != null);
    assert(messageSent != null);
    assert(newRoomCreated != null);
    return messageSent(roomName, createMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nextPageRequested(String roomName),
    TResult messageSent(String roomName, CreateMessage createMessage),
    TResult newRoomCreated(CreateRoom createRoom),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messageSent != null) {
      return messageSent(roomName, createMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nextPageRequested(NextPageRequested value),
    @required TResult messageSent(MessageSent value),
    @required TResult newRoomCreated(NewRoomCreated value),
  }) {
    assert(nextPageRequested != null);
    assert(messageSent != null);
    assert(newRoomCreated != null);
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nextPageRequested(NextPageRequested value),
    TResult messageSent(MessageSent value),
    TResult newRoomCreated(NewRoomCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements EditRoomBlocEvent {
  const factory MessageSent(
      {@required String roomName,
      @required CreateMessage createMessage}) = _$MessageSent;

  String get roomName;
  CreateMessage get createMessage;
  @JsonKey(ignore: true)
  $MessageSentCopyWith<MessageSent> get copyWith;
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
    Object createRoom = freezed,
  }) {
    return _then(NewRoomCreated(
      createRoom:
          createRoom == freezed ? _value.createRoom : createRoom as CreateRoom,
    ));
  }

  @override
  $CreateRoomCopyWith<$Res> get createRoom {
    if (_value.createRoom == null) {
      return null;
    }
    return $CreateRoomCopyWith<$Res>(_value.createRoom, (value) {
      return _then(_value.copyWith(createRoom: value));
    });
  }
}

/// @nodoc
class _$NewRoomCreated implements NewRoomCreated {
  const _$NewRoomCreated({@required this.createRoom})
      : assert(createRoom != null);

  @override
  final CreateRoom createRoom;

  @override
  String toString() {
    return 'EditRoomBlocEvent.newRoomCreated(createRoom: $createRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewRoomCreated &&
            (identical(other.createRoom, createRoom) ||
                const DeepCollectionEquality()
                    .equals(other.createRoom, createRoom)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(createRoom);

  @JsonKey(ignore: true)
  @override
  $NewRoomCreatedCopyWith<NewRoomCreated> get copyWith =>
      _$NewRoomCreatedCopyWithImpl<NewRoomCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nextPageRequested(String roomName),
    @required TResult messageSent(String roomName, CreateMessage createMessage),
    @required TResult newRoomCreated(CreateRoom createRoom),
  }) {
    assert(nextPageRequested != null);
    assert(messageSent != null);
    assert(newRoomCreated != null);
    return newRoomCreated(createRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nextPageRequested(String roomName),
    TResult messageSent(String roomName, CreateMessage createMessage),
    TResult newRoomCreated(CreateRoom createRoom),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newRoomCreated != null) {
      return newRoomCreated(createRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nextPageRequested(NextPageRequested value),
    @required TResult messageSent(MessageSent value),
    @required TResult newRoomCreated(NewRoomCreated value),
  }) {
    assert(nextPageRequested != null);
    assert(messageSent != null);
    assert(newRoomCreated != null);
    return newRoomCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nextPageRequested(NextPageRequested value),
    TResult messageSent(MessageSent value),
    TResult newRoomCreated(NewRoomCreated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newRoomCreated != null) {
      return newRoomCreated(this);
    }
    return orElse();
  }
}

abstract class NewRoomCreated implements EditRoomBlocEvent {
  const factory NewRoomCreated({@required CreateRoom createRoom}) =
      _$NewRoomCreated;

  CreateRoom get createRoom;
  @JsonKey(ignore: true)
  $NewRoomCreatedCopyWith<NewRoomCreated> get copyWith;
}

/// @nodoc
class _$EditRoomBlocStateTearOff {
  const _$EditRoomBlocStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  NewRoomCreationStarted newRoomCreationStarted() {
    return const NewRoomCreationStarted();
  }

// ignore: unused_element
  NewRoomCreatedSuccessful newRoomCreatedSuccessful(String roomName) {
    return NewRoomCreatedSuccessful(
      roomName,
    );
  }

// ignore: unused_element
  Error error(String message) {
    return Error(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditRoomBlocState = _$EditRoomBlocStateTearOff();

/// @nodoc
mixin _$EditRoomBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult newRoomCreationStarted(),
    @required TResult newRoomCreatedSuccessful(String roomName),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult newRoomCreationStarted(),
    TResult newRoomCreatedSuccessful(String roomName),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult newRoomCreationStarted(NewRoomCreationStarted value),
    @required TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult newRoomCreationStarted(NewRoomCreationStarted value),
    TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    TResult error(Error value),
    @required TResult orElse(),
  });
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
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult newRoomCreationStarted(),
    @required TResult newRoomCreatedSuccessful(String roomName),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult newRoomCreationStarted(),
    TResult newRoomCreatedSuccessful(String roomName),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult newRoomCreationStarted(NewRoomCreationStarted value),
    @required TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult newRoomCreationStarted(NewRoomCreationStarted value),
    TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is NewRoomCreationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult newRoomCreationStarted(),
    @required TResult newRoomCreatedSuccessful(String roomName),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return newRoomCreationStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult newRoomCreationStarted(),
    TResult newRoomCreatedSuccessful(String roomName),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newRoomCreationStarted != null) {
      return newRoomCreationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult newRoomCreationStarted(NewRoomCreationStarted value),
    @required TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return newRoomCreationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult newRoomCreationStarted(NewRoomCreationStarted value),
    TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object roomName = freezed,
  }) {
    return _then(NewRoomCreatedSuccessful(
      roomName == freezed ? _value.roomName : roomName as String,
    ));
  }
}

/// @nodoc
class _$NewRoomCreatedSuccessful implements NewRoomCreatedSuccessful {
  const _$NewRoomCreatedSuccessful(this.roomName) : assert(roomName != null);

  @override
  final String roomName;

  @override
  String toString() {
    return 'EditRoomBlocState.newRoomCreatedSuccessful(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewRoomCreatedSuccessful &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roomName);

  @JsonKey(ignore: true)
  @override
  $NewRoomCreatedSuccessfulCopyWith<NewRoomCreatedSuccessful> get copyWith =>
      _$NewRoomCreatedSuccessfulCopyWithImpl<NewRoomCreatedSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult newRoomCreationStarted(),
    @required TResult newRoomCreatedSuccessful(String roomName),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return newRoomCreatedSuccessful(roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult newRoomCreationStarted(),
    TResult newRoomCreatedSuccessful(String roomName),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (newRoomCreatedSuccessful != null) {
      return newRoomCreatedSuccessful(roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult newRoomCreationStarted(NewRoomCreationStarted value),
    @required TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return newRoomCreatedSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult newRoomCreationStarted(NewRoomCreationStarted value),
    TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $NewRoomCreatedSuccessfulCopyWith<NewRoomCreatedSuccessful> get copyWith;
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
    Object message = freezed,
  }) {
    return _then(Error(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'EditRoomBlocState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult newRoomCreationStarted(),
    @required TResult newRoomCreatedSuccessful(String roomName),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult newRoomCreationStarted(),
    TResult newRoomCreatedSuccessful(String roomName),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult newRoomCreationStarted(NewRoomCreationStarted value),
    @required TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    @required TResult error(Error value),
  }) {
    assert(initial != null);
    assert(newRoomCreationStarted != null);
    assert(newRoomCreatedSuccessful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult newRoomCreationStarted(NewRoomCreationStarted value),
    TResult newRoomCreatedSuccessful(NewRoomCreatedSuccessful value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $ErrorCopyWith<Error> get copyWith;
}
