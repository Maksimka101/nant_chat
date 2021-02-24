// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RoomsBlocEventTearOff {
  const _$RoomsBlocEventTearOff();

// ignore: unused_element
  RoomsLoadStarted roomsLoadStarted() {
    return const RoomsLoadStarted();
  }

// ignore: unused_element
  RoomsLoadedEvent roomsLoaded(@nullable List<Room> rooms) {
    return RoomsLoadedEvent(
      rooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomsBlocEvent = _$RoomsBlocEventTearOff();

/// @nodoc
mixin _$RoomsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult roomsLoadStarted(),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomsLoadStarted(),
    TResult roomsLoaded(@nullable List<Room> rooms),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomsLoadStarted(RoomsLoadStarted value),
    @required TResult roomsLoaded(RoomsLoadedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomsLoadStarted(RoomsLoadStarted value),
    TResult roomsLoaded(RoomsLoadedEvent value),
    @required TResult orElse(),
  });
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
abstract class $RoomsLoadStartedCopyWith<$Res> {
  factory $RoomsLoadStartedCopyWith(
          RoomsLoadStarted value, $Res Function(RoomsLoadStarted) then) =
      _$RoomsLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomsLoadStartedCopyWithImpl<$Res>
    extends _$RoomsBlocEventCopyWithImpl<$Res>
    implements $RoomsLoadStartedCopyWith<$Res> {
  _$RoomsLoadStartedCopyWithImpl(
      RoomsLoadStarted _value, $Res Function(RoomsLoadStarted) _then)
      : super(_value, (v) => _then(v as RoomsLoadStarted));

  @override
  RoomsLoadStarted get _value => super._value as RoomsLoadStarted;
}

/// @nodoc
class _$RoomsLoadStarted implements RoomsLoadStarted {
  const _$RoomsLoadStarted();

  @override
  String toString() {
    return 'RoomsBlocEvent.roomsLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RoomsLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult roomsLoadStarted(),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  }) {
    assert(roomsLoadStarted != null);
    assert(roomsLoaded != null);
    return roomsLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomsLoadStarted(),
    TResult roomsLoaded(@nullable List<Room> rooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomsLoadStarted != null) {
      return roomsLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomsLoadStarted(RoomsLoadStarted value),
    @required TResult roomsLoaded(RoomsLoadedEvent value),
  }) {
    assert(roomsLoadStarted != null);
    assert(roomsLoaded != null);
    return roomsLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomsLoadStarted(RoomsLoadStarted value),
    TResult roomsLoaded(RoomsLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomsLoadStarted != null) {
      return roomsLoadStarted(this);
    }
    return orElse();
  }
}

abstract class RoomsLoadStarted implements RoomsBlocEvent {
  const factory RoomsLoadStarted() = _$RoomsLoadStarted;
}

/// @nodoc
abstract class $RoomsLoadedEventCopyWith<$Res> {
  factory $RoomsLoadedEventCopyWith(
          RoomsLoadedEvent value, $Res Function(RoomsLoadedEvent) then) =
      _$RoomsLoadedEventCopyWithImpl<$Res>;
  $Res call({@nullable List<Room> rooms});
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
    Object rooms = freezed,
  }) {
    return _then(RoomsLoadedEvent(
      rooms == freezed ? _value.rooms : rooms as List<Room>,
    ));
  }
}

/// @nodoc
class _$RoomsLoadedEvent implements RoomsLoadedEvent {
  const _$RoomsLoadedEvent(@nullable this.rooms);

  @override
  @nullable
  final List<Room> rooms;

  @override
  String toString() {
    return 'RoomsBlocEvent.roomsLoaded(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoomsLoadedEvent &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rooms);

  @JsonKey(ignore: true)
  @override
  $RoomsLoadedEventCopyWith<RoomsLoadedEvent> get copyWith =>
      _$RoomsLoadedEventCopyWithImpl<RoomsLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult roomsLoadStarted(),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  }) {
    assert(roomsLoadStarted != null);
    assert(roomsLoaded != null);
    return roomsLoaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult roomsLoadStarted(),
    TResult roomsLoaded(@nullable List<Room> rooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomsLoaded != null) {
      return roomsLoaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult roomsLoadStarted(RoomsLoadStarted value),
    @required TResult roomsLoaded(RoomsLoadedEvent value),
  }) {
    assert(roomsLoadStarted != null);
    assert(roomsLoaded != null);
    return roomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult roomsLoadStarted(RoomsLoadStarted value),
    TResult roomsLoaded(RoomsLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomsLoaded != null) {
      return roomsLoaded(this);
    }
    return orElse();
  }
}

abstract class RoomsLoadedEvent implements RoomsBlocEvent {
  const factory RoomsLoadedEvent(@nullable List<Room> rooms) =
      _$RoomsLoadedEvent;

  @nullable
  List<Room> get rooms;
  @JsonKey(ignore: true)
  $RoomsLoadedEventCopyWith<RoomsLoadedEvent> get copyWith;
}

/// @nodoc
class _$RoomsBlocStateTearOff {
  const _$RoomsBlocStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  RoomsLoaded roomsLoaded(List<Room> rooms) {
    return RoomsLoaded(
      rooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $RoomsBlocState = _$RoomsBlocStateTearOff();

/// @nodoc
mixin _$RoomsBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult roomsLoaded(List<Room> rooms),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult roomsLoaded(List<Room> rooms),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult roomsLoaded(RoomsLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult roomsLoaded(RoomsLoaded value),
    @required TResult orElse(),
  });
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
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult roomsLoaded(List<Room> rooms),
  }) {
    assert(initial != null);
    assert(roomsLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult roomsLoaded(List<Room> rooms),
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
    @required TResult roomsLoaded(RoomsLoaded value),
  }) {
    assert(initial != null);
    assert(roomsLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult roomsLoaded(RoomsLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object rooms = freezed,
  }) {
    return _then(RoomsLoaded(
      rooms == freezed ? _value.rooms : rooms as List<Room>,
    ));
  }
}

/// @nodoc
class _$RoomsLoaded implements RoomsLoaded {
  const _$RoomsLoaded(this.rooms) : assert(rooms != null);

  @override
  final List<Room> rooms;

  @override
  String toString() {
    return 'RoomsBlocState.roomsLoaded(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoomsLoaded &&
            (identical(other.rooms, rooms) ||
                const DeepCollectionEquality().equals(other.rooms, rooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(rooms);

  @JsonKey(ignore: true)
  @override
  $RoomsLoadedCopyWith<RoomsLoaded> get copyWith =>
      _$RoomsLoadedCopyWithImpl<RoomsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult roomsLoaded(List<Room> rooms),
  }) {
    assert(initial != null);
    assert(roomsLoaded != null);
    return roomsLoaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult roomsLoaded(List<Room> rooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (roomsLoaded != null) {
      return roomsLoaded(rooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult roomsLoaded(RoomsLoaded value),
  }) {
    assert(initial != null);
    assert(roomsLoaded != null);
    return roomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult roomsLoaded(RoomsLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $RoomsLoadedCopyWith<RoomsLoaded> get copyWith;
}
