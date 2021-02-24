// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserBlocEventTearOff {
  const _$UserBlocEventTearOff();

// ignore: unused_element
  LoadUserStarted loadUserStarted() {
    return const LoadUserStarted();
  }

// ignore: unused_element
  UserLoadedEvent userLoaded(@nullable User user) {
    return UserLoadedEvent(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserBlocEvent = _$UserBlocEventTearOff();

/// @nodoc
mixin _$UserBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadUserStarted(),
    @required TResult userLoaded(@nullable User user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadUserStarted(),
    TResult userLoaded(@nullable User user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadUserStarted(LoadUserStarted value),
    @required TResult userLoaded(UserLoadedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadUserStarted(LoadUserStarted value),
    TResult userLoaded(UserLoadedEvent value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserBlocEventCopyWith<$Res> {
  factory $UserBlocEventCopyWith(
          UserBlocEvent value, $Res Function(UserBlocEvent) then) =
      _$UserBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlocEventCopyWithImpl<$Res>
    implements $UserBlocEventCopyWith<$Res> {
  _$UserBlocEventCopyWithImpl(this._value, this._then);

  final UserBlocEvent _value;
  // ignore: unused_field
  final $Res Function(UserBlocEvent) _then;
}

/// @nodoc
abstract class $LoadUserStartedCopyWith<$Res> {
  factory $LoadUserStartedCopyWith(
          LoadUserStarted value, $Res Function(LoadUserStarted) then) =
      _$LoadUserStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadUserStartedCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res>
    implements $LoadUserStartedCopyWith<$Res> {
  _$LoadUserStartedCopyWithImpl(
      LoadUserStarted _value, $Res Function(LoadUserStarted) _then)
      : super(_value, (v) => _then(v as LoadUserStarted));

  @override
  LoadUserStarted get _value => super._value as LoadUserStarted;
}

/// @nodoc
class _$LoadUserStarted implements LoadUserStarted {
  const _$LoadUserStarted();

  @override
  String toString() {
    return 'UserBlocEvent.loadUserStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadUserStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadUserStarted(),
    @required TResult userLoaded(@nullable User user),
  }) {
    assert(loadUserStarted != null);
    assert(userLoaded != null);
    return loadUserStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadUserStarted(),
    TResult userLoaded(@nullable User user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadUserStarted != null) {
      return loadUserStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadUserStarted(LoadUserStarted value),
    @required TResult userLoaded(UserLoadedEvent value),
  }) {
    assert(loadUserStarted != null);
    assert(userLoaded != null);
    return loadUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadUserStarted(LoadUserStarted value),
    TResult userLoaded(UserLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadUserStarted != null) {
      return loadUserStarted(this);
    }
    return orElse();
  }
}

abstract class LoadUserStarted implements UserBlocEvent {
  const factory LoadUserStarted() = _$LoadUserStarted;
}

/// @nodoc
abstract class $UserLoadedEventCopyWith<$Res> {
  factory $UserLoadedEventCopyWith(
          UserLoadedEvent value, $Res Function(UserLoadedEvent) then) =
      _$UserLoadedEventCopyWithImpl<$Res>;
  $Res call({@nullable User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserLoadedEventCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res>
    implements $UserLoadedEventCopyWith<$Res> {
  _$UserLoadedEventCopyWithImpl(
      UserLoadedEvent _value, $Res Function(UserLoadedEvent) _then)
      : super(_value, (v) => _then(v as UserLoadedEvent));

  @override
  UserLoadedEvent get _value => super._value as UserLoadedEvent;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoadedEvent(
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
class _$UserLoadedEvent implements UserLoadedEvent {
  const _$UserLoadedEvent(@nullable this.user);

  @override
  @nullable
  final User user;

  @override
  String toString() {
    return 'UserBlocEvent.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoadedEvent &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $UserLoadedEventCopyWith<UserLoadedEvent> get copyWith =>
      _$UserLoadedEventCopyWithImpl<UserLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadUserStarted(),
    @required TResult userLoaded(@nullable User user),
  }) {
    assert(loadUserStarted != null);
    assert(userLoaded != null);
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadUserStarted(),
    TResult userLoaded(@nullable User user),
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
    @required TResult loadUserStarted(LoadUserStarted value),
    @required TResult userLoaded(UserLoadedEvent value),
  }) {
    assert(loadUserStarted != null);
    assert(userLoaded != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadUserStarted(LoadUserStarted value),
    TResult userLoaded(UserLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoadedEvent implements UserBlocEvent {
  const factory UserLoadedEvent(@nullable User user) = _$UserLoadedEvent;

  @nullable
  User get user;
  @JsonKey(ignore: true)
  $UserLoadedEventCopyWith<UserLoadedEvent> get copyWith;
}

/// @nodoc
class _$UserBlocStateTearOff {
  const _$UserBlocStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loaded loaded(User user) {
    return Loaded(
      user,
    );
  }

// ignore: unused_element
  UnAuthrized unAuthorized() {
    return const UnAuthrized();
  }
}

/// @nodoc
// ignore: unused_element
const $UserBlocState = _$UserBlocStateTearOff();

/// @nodoc
mixin _$UserBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loaded(User user),
    @required TResult unAuthorized(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loaded(User user),
    TResult unAuthorized(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loaded(Loaded value),
    @required TResult unAuthorized(UnAuthrized value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loaded(Loaded value),
    TResult unAuthorized(UnAuthrized value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserBlocStateCopyWith<$Res> {
  factory $UserBlocStateCopyWith(
          UserBlocState value, $Res Function(UserBlocState) then) =
      _$UserBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlocStateCopyWithImpl<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  _$UserBlocStateCopyWithImpl(this._value, this._then);

  final UserBlocState _value;
  // ignore: unused_field
  final $Res Function(UserBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$UserBlocStateCopyWithImpl<$Res>
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
    return 'UserBlocState.initial()';
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
    @required TResult loaded(User user),
    @required TResult unAuthorized(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(unAuthorized != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loaded(User user),
    TResult unAuthorized(),
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
    @required TResult loaded(Loaded value),
    @required TResult unAuthorized(UnAuthrized value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(unAuthorized != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loaded(Loaded value),
    TResult unAuthorized(UnAuthrized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements UserBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$UserBlocStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Loaded(
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
class _$Loaded implements Loaded {
  const _$Loaded(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserBlocState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loaded(User user),
    @required TResult unAuthorized(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(unAuthorized != null);
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loaded(User user),
    TResult unAuthorized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loaded(Loaded value),
    @required TResult unAuthorized(UnAuthrized value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(unAuthorized != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loaded(Loaded value),
    TResult unAuthorized(UnAuthrized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements UserBlocState {
  const factory Loaded(User user) = _$Loaded;

  User get user;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $UnAuthrizedCopyWith<$Res> {
  factory $UnAuthrizedCopyWith(
          UnAuthrized value, $Res Function(UnAuthrized) then) =
      _$UnAuthrizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthrizedCopyWithImpl<$Res> extends _$UserBlocStateCopyWithImpl<$Res>
    implements $UnAuthrizedCopyWith<$Res> {
  _$UnAuthrizedCopyWithImpl(
      UnAuthrized _value, $Res Function(UnAuthrized) _then)
      : super(_value, (v) => _then(v as UnAuthrized));

  @override
  UnAuthrized get _value => super._value as UnAuthrized;
}

/// @nodoc
class _$UnAuthrized implements UnAuthrized {
  const _$UnAuthrized();

  @override
  String toString() {
    return 'UserBlocState.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthrized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loaded(User user),
    @required TResult unAuthorized(),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(unAuthorized != null);
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loaded(User user),
    TResult unAuthorized(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult loaded(Loaded value),
    @required TResult unAuthorized(UnAuthrized value),
  }) {
    assert(initial != null);
    assert(loaded != null);
    assert(unAuthorized != null);
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult loaded(Loaded value),
    TResult unAuthorized(UnAuthrized value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthrized implements UserBlocState {
  const factory UnAuthrized() = _$UnAuthrized;
}
