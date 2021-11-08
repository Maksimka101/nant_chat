// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomsBlocEventTearOff {
  const _$RoomsBlocEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }

  RoomsLoadedEvent roomsLoaded(List<Room> rooms) {
    return RoomsLoadedEvent(
      rooms,
    );
  }
}

/// @nodoc
const $RoomsBlocEvent = _$RoomsBlocEventTearOff();

/// @nodoc
mixin _$RoomsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Room> rooms) roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Room> rooms)? roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Room> rooms)? roomsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RoomsLoadedEvent value) roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RoomsLoadedEvent value)? roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RoomsLoadedEvent value)? roomsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsBlocEventCopyWith<$Res> {
  factory $RoomsBlocEventCopyWith(
          RoomsBlocEvent value, $Res Function(RoomsBlocEvent) then) =
      _$RoomsBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomsBlocEventCopyWithImpl<$Res>
    implements $RoomsBlocEventCopyWith<$Res> {
  _$RoomsBlocEventCopyWithImpl(this._value, this._then);

  final RoomsBlocEvent _value;
  // ignore: unused_field
  final $Res Function(RoomsBlocEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$RoomsBlocEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'RoomsBlocEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Room> rooms) roomsLoaded,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Room> rooms)? roomsLoaded,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Room> rooms)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RoomsLoadedEvent value) roomsLoaded,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RoomsLoadedEvent value)? roomsLoaded,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RoomsLoadedEvent value)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements RoomsBlocEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class $RoomsLoadedEventCopyWith<$Res> {
  factory $RoomsLoadedEventCopyWith(
          RoomsLoadedEvent value, $Res Function(RoomsLoadedEvent) then) =
      _$RoomsLoadedEventCopyWithImpl<$Res>;
  $Res call({List<Room> rooms});
}

/// @nodoc
class _$RoomsLoadedEventCopyWithImpl<$Res>
    extends _$RoomsBlocEventCopyWithImpl<$Res>
    implements $RoomsLoadedEventCopyWith<$Res> {
  _$RoomsLoadedEventCopyWithImpl(
      RoomsLoadedEvent _value, $Res Function(RoomsLoadedEvent) _then)
      : super(_value, (v) => _then(v as RoomsLoadedEvent));

  @override
  RoomsLoadedEvent get _value => super._value as RoomsLoadedEvent;

  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(RoomsLoadedEvent(
      rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$RoomsLoadedEvent implements RoomsLoadedEvent {
  const _$RoomsLoadedEvent(this.rooms);

  @override
  final List<Room> rooms;

  @override
  String toString() {
    return 'RoomsBlocEvent.roomsLoaded(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomsLoadedEvent &&
            const DeepCollectionEquality().equals(other.rooms, rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rooms));

  @JsonKey(ignore: true)
  @override
  $RoomsLoadedEventCopyWith<RoomsLoadedEvent> get copyWith =>
      _$RoomsLoadedEventCopyWithImpl<RoomsLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(List<Room> rooms) roomsLoaded,
  }) {
    return roomsLoaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Room> rooms)? roomsLoaded,
  }) {
    return roomsLoaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(List<Room> rooms)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (roomsLoaded != null) {
      return roomsLoaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(RoomsLoadedEvent value) roomsLoaded,
  }) {
    return roomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RoomsLoadedEvent value)? roomsLoaded,
  }) {
    return roomsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(RoomsLoadedEvent value)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (roomsLoaded != null) {
      return roomsLoaded(this);
    }
    return orElse();
  }
}

abstract class RoomsLoadedEvent implements RoomsBlocEvent {
  const factory RoomsLoadedEvent(List<Room> rooms) = _$RoomsLoadedEvent;

  List<Room> get rooms;
  @JsonKey(ignore: true)
  $RoomsLoadedEventCopyWith<RoomsLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoomsBlocStateTearOff {
  const _$RoomsBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  RoomsLoaded roomsLoaded(List<Room> rooms) {
    return RoomsLoaded(
      rooms,
    );
  }
}

/// @nodoc
const $RoomsBlocState = _$RoomsBlocStateTearOff();

/// @nodoc
mixin _$RoomsBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Room> rooms) roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Room> rooms)? roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Room> rooms)? roomsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RoomsLoaded value) roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RoomsLoaded value)? roomsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RoomsLoaded value)? roomsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsBlocStateCopyWith<$Res> {
  factory $RoomsBlocStateCopyWith(
          RoomsBlocState value, $Res Function(RoomsBlocState) then) =
      _$RoomsBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomsBlocStateCopyWithImpl<$Res>
    implements $RoomsBlocStateCopyWith<$Res> {
  _$RoomsBlocStateCopyWithImpl(this._value, this._then);

  final RoomsBlocState _value;
  // ignore: unused_field
  final $Res Function(RoomsBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$RoomsBlocStateCopyWithImpl<$Res>
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
    return 'RoomsBlocState.initial()';
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
    required TResult Function(List<Room> rooms) roomsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Room> rooms)? roomsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Room> rooms)? roomsLoaded,
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
    required TResult Function(RoomsLoaded value) roomsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RoomsLoaded value)? roomsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RoomsLoaded value)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RoomsBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $RoomsLoadedCopyWith<$Res> {
  factory $RoomsLoadedCopyWith(
          RoomsLoaded value, $Res Function(RoomsLoaded) then) =
      _$RoomsLoadedCopyWithImpl<$Res>;
  $Res call({List<Room> rooms});
}

/// @nodoc
class _$RoomsLoadedCopyWithImpl<$Res> extends _$RoomsBlocStateCopyWithImpl<$Res>
    implements $RoomsLoadedCopyWith<$Res> {
  _$RoomsLoadedCopyWithImpl(
      RoomsLoaded _value, $Res Function(RoomsLoaded) _then)
      : super(_value, (v) => _then(v as RoomsLoaded));

  @override
  RoomsLoaded get _value => super._value as RoomsLoaded;

  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(RoomsLoaded(
      rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$RoomsLoaded implements RoomsLoaded {
  const _$RoomsLoaded(this.rooms);

  @override
  final List<Room> rooms;

  @override
  String toString() {
    return 'RoomsBlocState.roomsLoaded(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomsLoaded &&
            const DeepCollectionEquality().equals(other.rooms, rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rooms));

  @JsonKey(ignore: true)
  @override
  $RoomsLoadedCopyWith<RoomsLoaded> get copyWith =>
      _$RoomsLoadedCopyWithImpl<RoomsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Room> rooms) roomsLoaded,
  }) {
    return roomsLoaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Room> rooms)? roomsLoaded,
  }) {
    return roomsLoaded?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Room> rooms)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (roomsLoaded != null) {
      return roomsLoaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(RoomsLoaded value) roomsLoaded,
  }) {
    return roomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RoomsLoaded value)? roomsLoaded,
  }) {
    return roomsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(RoomsLoaded value)? roomsLoaded,
    required TResult orElse(),
  }) {
    if (roomsLoaded != null) {
      return roomsLoaded(this);
    }
    return orElse();
  }
}

abstract class RoomsLoaded implements RoomsBlocState {
  const factory RoomsLoaded(List<Room> rooms) = _$RoomsLoaded;

  List<Room> get rooms;
  @JsonKey(ignore: true)
  $RoomsLoadedCopyWith<RoomsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
