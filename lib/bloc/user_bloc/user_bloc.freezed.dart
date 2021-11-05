// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserBlocEventTearOff {
  const _$UserBlocEventTearOff();

  LoadUserStarted loadUserStarted() {
    return const LoadUserStarted();
  }

  UserLoadedEvent userLoaded(User? user) {
    return UserLoadedEvent(
      user,
    );
  }
}

/// @nodoc
const $UserBlocEvent = _$UserBlocEventTearOff();

/// @nodoc
mixin _$UserBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserStarted,
    required TResult Function(User? user) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUserStarted,
    TResult Function(User? user)? userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserStarted,
    TResult Function(User? user)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserStarted value) loadUserStarted,
    required TResult Function(UserLoadedEvent value) userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserStarted value)? loadUserStarted,
    TResult Function(UserLoadedEvent value)? userLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserStarted value)? loadUserStarted,
    TResult Function(UserLoadedEvent value)? userLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadUserStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserStarted,
    required TResult Function(User? user) userLoaded,
  }) {
    return loadUserStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUserStarted,
    TResult Function(User? user)? userLoaded,
  }) {
    return loadUserStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserStarted,
    TResult Function(User? user)? userLoaded,
    required TResult orElse(),
  }) {
    if (loadUserStarted != null) {
      return loadUserStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserStarted value) loadUserStarted,
    required TResult Function(UserLoadedEvent value) userLoaded,
  }) {
    return loadUserStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserStarted value)? loadUserStarted,
    TResult Function(UserLoadedEvent value)? userLoaded,
  }) {
    return loadUserStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserStarted value)? loadUserStarted,
    TResult Function(UserLoadedEvent value)? userLoaded,
    required TResult orElse(),
  }) {
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
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(UserLoadedEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoadedEvent implements UserLoadedEvent {
  const _$UserLoadedEvent(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'UserBlocEvent.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLoadedEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $UserLoadedEventCopyWith<UserLoadedEvent> get copyWith =>
      _$UserLoadedEventCopyWithImpl<UserLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUserStarted,
    required TResult Function(User? user) userLoaded,
  }) {
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadUserStarted,
    TResult Function(User? user)? userLoaded,
  }) {
    return userLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUserStarted,
    TResult Function(User? user)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUserStarted value) loadUserStarted,
    required TResult Function(UserLoadedEvent value) userLoaded,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadUserStarted value)? loadUserStarted,
    TResult Function(UserLoadedEvent value)? userLoaded,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUserStarted value)? loadUserStarted,
    TResult Function(UserLoadedEvent value)? userLoaded,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoadedEvent implements UserBlocEvent {
  const factory UserLoadedEvent(User? user) = _$UserLoadedEvent;

  User? get user;
  @JsonKey(ignore: true)
  $UserLoadedEventCopyWith<UserLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserBlocStateTearOff {
  const _$UserBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loaded loaded(User user) {
    return Loaded(
      user,
    );
  }

  UnAuthrized unAuthorized() {
    return const UnAuthrized();
  }
}

/// @nodoc
const $UserBlocState = _$UserBlocStateTearOff();

/// @nodoc
mixin _$UserBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function() unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UnAuthrized value) unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function() unAuthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
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
    required TResult Function(Loaded value) loaded,
    required TResult Function(UnAuthrized value) unAuthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
    required TResult orElse(),
  }) {
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
    Object? user = freezed,
  }) {
    return _then(Loaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserBlocState.loaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function() unAuthorized,
  }) {
    return loaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
  }) {
    return loaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UnAuthrized value) unAuthorized,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
    required TResult orElse(),
  }) {
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
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthrized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) loaded,
    required TResult Function() unAuthorized,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? loaded,
    TResult Function()? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(UnAuthrized value) unAuthorized,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(UnAuthrized value)? unAuthorized,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthrized implements UserBlocState {
  const factory UnAuthrized() = _$UnAuthrized;
}
