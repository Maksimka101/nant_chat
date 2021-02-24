// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'initialize_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InitializeBlocEventTearOff {
  const _$InitializeBlocEventTearOff();

// ignore: unused_element
  InitializationStarted initializationStarted() {
    return const InitializationStarted();
  }

// ignore: unused_element
  UserLoaded userLoaded(@nullable User user) {
    return UserLoaded(
      user,
    );
  }

// ignore: unused_element
  RoomsLoaded roomsLoaded(@nullable List<Room> rooms) {
    return RoomsLoaded(
      rooms,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeBlocEvent = _$InitializeBlocEventTearOff();

/// @nodoc
mixin _$InitializeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializationStarted(),
    @required TResult userLoaded(@nullable User user),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializationStarted(),
    TResult userLoaded(@nullable User user),
    TResult roomsLoaded(@nullable List<Room> rooms),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializationStarted(InitializationStarted value),
    @required TResult userLoaded(UserLoaded value),
    @required TResult roomsLoaded(RoomsLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializationStarted(InitializationStarted value),
    TResult userLoaded(UserLoaded value),
    TResult roomsLoaded(RoomsLoaded value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InitializeBlocEventCopyWith<$Res> {
  factory $InitializeBlocEventCopyWith(
          InitializeBlocEvent value, $Res Function(InitializeBlocEvent) then) =
      _$InitializeBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeBlocEventCopyWithImpl<$Res>
    implements $InitializeBlocEventCopyWith<$Res> {
  _$InitializeBlocEventCopyWithImpl(this._value, this._then);

  final InitializeBlocEvent _value;
  // ignore: unused_field
  final $Res Function(InitializeBlocEvent) _then;
}

/// @nodoc
abstract class $InitializationStartedCopyWith<$Res> {
  factory $InitializationStartedCopyWith(InitializationStarted value,
          $Res Function(InitializationStarted) then) =
      _$InitializationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializationStartedCopyWithImpl<$Res>
    extends _$InitializeBlocEventCopyWithImpl<$Res>
    implements $InitializationStartedCopyWith<$Res> {
  _$InitializationStartedCopyWithImpl(
      InitializationStarted _value, $Res Function(InitializationStarted) _then)
      : super(_value, (v) => _then(v as InitializationStarted));

  @override
  InitializationStarted get _value => super._value as InitializationStarted;
}

/// @nodoc
class _$InitializationStarted implements InitializationStarted {
  const _$InitializationStarted();

  @override
  String toString() {
    return 'InitializeBlocEvent.initializationStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializationStarted(),
    @required TResult userLoaded(@nullable User user),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  }) {
    assert(initializationStarted != null);
    assert(userLoaded != null);
    assert(roomsLoaded != null);
    return initializationStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializationStarted(),
    TResult userLoaded(@nullable User user),
    TResult roomsLoaded(@nullable List<Room> rooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializationStarted != null) {
      return initializationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializationStarted(InitializationStarted value),
    @required TResult userLoaded(UserLoaded value),
    @required TResult roomsLoaded(RoomsLoaded value),
  }) {
    assert(initializationStarted != null);
    assert(userLoaded != null);
    assert(roomsLoaded != null);
    return initializationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializationStarted(InitializationStarted value),
    TResult userLoaded(UserLoaded value),
    TResult roomsLoaded(RoomsLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initializationStarted != null) {
      return initializationStarted(this);
    }
    return orElse();
  }
}

abstract class InitializationStarted implements InitializeBlocEvent {
  const factory InitializationStarted() = _$InitializationStarted;
}

/// @nodoc
abstract class $UserLoadedCopyWith<$Res> {
  factory $UserLoadedCopyWith(
          UserLoaded value, $Res Function(UserLoaded) then) =
      _$UserLoadedCopyWithImpl<$Res>;
  $Res call({@nullable User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserLoadedCopyWithImpl<$Res>
    extends _$InitializeBlocEventCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(UserLoaded _value, $Res Function(UserLoaded) _then)
      : super(_value, (v) => _then(v as UserLoaded));

  @override
  UserLoaded get _value => super._value as UserLoaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoaded(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$UserLoaded implements UserLoaded {
  const _$UserLoaded(@nullable this.user);

  @override
  @nullable
  final User user;

  @override
  String toString() {
    return 'InitializeBlocEvent.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserLoadedCopyWith<UserLoaded> get copyWith =>
      _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initializationStarted(),
    @required TResult userLoaded(@nullable User user),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  }) {
    assert(initializationStarted != null);
    assert(userLoaded != null);
    assert(roomsLoaded != null);
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializationStarted(),
    TResult userLoaded(@nullable User user),
    TResult roomsLoaded(@nullable List<Room> rooms),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initializationStarted(InitializationStarted value),
    @required TResult userLoaded(UserLoaded value),
    @required TResult roomsLoaded(RoomsLoaded value),
  }) {
    assert(initializationStarted != null);
    assert(userLoaded != null);
    assert(roomsLoaded != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializationStarted(InitializationStarted value),
    TResult userLoaded(UserLoaded value),
    TResult roomsLoaded(RoomsLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements InitializeBlocEvent {
  const factory UserLoaded(@nullable User user) = _$UserLoaded;

  @nullable
  User get user;
  @JsonKey(ignore: true)
  $UserLoadedCopyWith<UserLoaded> get copyWith;
}

/// @nodoc
abstract class $RoomsLoadedCopyWith<$Res> {
  factory $RoomsLoadedCopyWith(
          RoomsLoaded value, $Res Function(RoomsLoaded) then) =
      _$RoomsLoadedCopyWithImpl<$Res>;
  $Res call({@nullable List<Room> rooms});
}

/// @nodoc
class _$RoomsLoadedCopyWithImpl<$Res>
    extends _$InitializeBlocEventCopyWithImpl<$Res>
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
  const _$RoomsLoaded(@nullable this.rooms);

  @override
  @nullable
  final List<Room> rooms;

  @override
  String toString() {
    return 'InitializeBlocEvent.roomsLoaded(rooms: $rooms)';
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
    @required TResult initializationStarted(),
    @required TResult userLoaded(@nullable User user),
    @required TResult roomsLoaded(@nullable List<Room> rooms),
  }) {
    assert(initializationStarted != null);
    assert(userLoaded != null);
    assert(roomsLoaded != null);
    return roomsLoaded(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initializationStarted(),
    TResult userLoaded(@nullable User user),
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
    @required TResult initializationStarted(InitializationStarted value),
    @required TResult userLoaded(UserLoaded value),
    @required TResult roomsLoaded(RoomsLoaded value),
  }) {
    assert(initializationStarted != null);
    assert(userLoaded != null);
    assert(roomsLoaded != null);
    return roomsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initializationStarted(InitializationStarted value),
    TResult userLoaded(UserLoaded value),
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

abstract class RoomsLoaded implements InitializeBlocEvent {
  const factory RoomsLoaded(@nullable List<Room> rooms) = _$RoomsLoaded;

  @nullable
  List<Room> get rooms;
  @JsonKey(ignore: true)
  $RoomsLoadedCopyWith<RoomsLoaded> get copyWith;
}

/// @nodoc
class _$InitializeBlocStateTearOff {
  const _$InitializeBlocStateTearOff();

// ignore: unused_element
  Initialized initialized() {
    return const Initialized();
  }

// ignore: unused_element
  UnInitialized unInitialized() {
    return const UnInitialized();
  }
}

/// @nodoc
// ignore: unused_element
const $InitializeBlocState = _$InitializeBlocStateTearOff();

/// @nodoc
mixin _$InitializeBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult unInitialized(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult unInitialized(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult unInitialized(UnInitialized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult unInitialized(UnInitialized value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $InitializeBlocStateCopyWith<$Res> {
  factory $InitializeBlocStateCopyWith(
          InitializeBlocState value, $Res Function(InitializeBlocState) then) =
      _$InitializeBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeBlocStateCopyWithImpl<$Res>
    implements $InitializeBlocStateCopyWith<$Res> {
  _$InitializeBlocStateCopyWithImpl(this._value, this._then);

  final InitializeBlocState _value;
  // ignore: unused_field
  final $Res Function(InitializeBlocState) _then;
}

/// @nodoc
abstract class $InitializedCopyWith<$Res> {
  factory $InitializedCopyWith(
          Initialized value, $Res Function(Initialized) then) =
      _$InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializedCopyWithImpl<$Res>
    extends _$InitializeBlocStateCopyWithImpl<$Res>
    implements $InitializedCopyWith<$Res> {
  _$InitializedCopyWithImpl(
      Initialized _value, $Res Function(Initialized) _then)
      : super(_value, (v) => _then(v as Initialized));

  @override
  Initialized get _value => super._value as Initialized;
}

/// @nodoc
class _$Initialized implements Initialized {
  const _$Initialized();

  @override
  String toString() {
    return 'InitializeBlocState.initialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult unInitialized(),
  }) {
    assert(initialized != null);
    assert(unInitialized != null);
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult unInitialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult unInitialized(UnInitialized value),
  }) {
    assert(initialized != null);
    assert(unInitialized != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult unInitialized(UnInitialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class Initialized implements InitializeBlocState {
  const factory Initialized() = _$Initialized;
}

/// @nodoc
abstract class $UnInitializedCopyWith<$Res> {
  factory $UnInitializedCopyWith(
          UnInitialized value, $Res Function(UnInitialized) then) =
      _$UnInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnInitializedCopyWithImpl<$Res>
    extends _$InitializeBlocStateCopyWithImpl<$Res>
    implements $UnInitializedCopyWith<$Res> {
  _$UnInitializedCopyWithImpl(
      UnInitialized _value, $Res Function(UnInitialized) _then)
      : super(_value, (v) => _then(v as UnInitialized));

  @override
  UnInitialized get _value => super._value as UnInitialized;
}

/// @nodoc
class _$UnInitialized implements UnInitialized {
  const _$UnInitialized();

  @override
  String toString() {
    return 'InitializeBlocState.unInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(),
    @required TResult unInitialized(),
  }) {
    assert(initialized != null);
    assert(unInitialized != null);
    return unInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(),
    TResult unInitialized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unInitialized != null) {
      return unInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(Initialized value),
    @required TResult unInitialized(UnInitialized value),
  }) {
    assert(initialized != null);
    assert(unInitialized != null);
    return unInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(Initialized value),
    TResult unInitialized(UnInitialized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unInitialized != null) {
      return unInitialized(this);
    }
    return orElse();
  }
}

abstract class UnInitialized implements InitializeBlocState {
  const factory UnInitialized() = _$UnInitialized;
}
