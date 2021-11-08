// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationBlocEventTearOff {
  const _$AuthorizationBlocEventTearOff();

  Authorize authorize(
      {required CreateUser createUser,
      required String host,
      required bool useSecureConnection}) {
    return Authorize(
      createUser: createUser,
      host: host,
      useSecureConnection: useSecureConnection,
    );
  }
}

/// @nodoc
const $AuthorizationBlocEvent = _$AuthorizationBlocEventTearOff();

/// @nodoc
mixin _$AuthorizationBlocEvent {
  CreateUser get createUser => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  bool get useSecureConnection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateUser createUser, String host, bool useSecureConnection)
        authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            CreateUser createUser, String host, bool useSecureConnection)?
        authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CreateUser createUser, String host, bool useSecureConnection)?
        authorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorize value) authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizationBlocEventCopyWith<AuthorizationBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationBlocEventCopyWith<$Res> {
  factory $AuthorizationBlocEventCopyWith(AuthorizationBlocEvent value,
          $Res Function(AuthorizationBlocEvent) then) =
      _$AuthorizationBlocEventCopyWithImpl<$Res>;
  $Res call({CreateUser createUser, String host, bool useSecureConnection});

  $CreateUserCopyWith<$Res> get createUser;
}

/// @nodoc
class _$AuthorizationBlocEventCopyWithImpl<$Res>
    implements $AuthorizationBlocEventCopyWith<$Res> {
  _$AuthorizationBlocEventCopyWithImpl(this._value, this._then);

  final AuthorizationBlocEvent _value;
  // ignore: unused_field
  final $Res Function(AuthorizationBlocEvent) _then;

  @override
  $Res call({
    Object? createUser = freezed,
    Object? host = freezed,
    Object? useSecureConnection = freezed,
  }) {
    return _then(_value.copyWith(
      createUser: createUser == freezed
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as CreateUser,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      useSecureConnection: useSecureConnection == freezed
          ? _value.useSecureConnection
          : useSecureConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CreateUserCopyWith<$Res> get createUser {
    return $CreateUserCopyWith<$Res>(_value.createUser, (value) {
      return _then(_value.copyWith(createUser: value));
    });
  }
}

/// @nodoc
abstract class $AuthorizeCopyWith<$Res>
    implements $AuthorizationBlocEventCopyWith<$Res> {
  factory $AuthorizeCopyWith(Authorize value, $Res Function(Authorize) then) =
      _$AuthorizeCopyWithImpl<$Res>;
  @override
  $Res call({CreateUser createUser, String host, bool useSecureConnection});

  @override
  $CreateUserCopyWith<$Res> get createUser;
}

/// @nodoc
class _$AuthorizeCopyWithImpl<$Res>
    extends _$AuthorizationBlocEventCopyWithImpl<$Res>
    implements $AuthorizeCopyWith<$Res> {
  _$AuthorizeCopyWithImpl(Authorize _value, $Res Function(Authorize) _then)
      : super(_value, (v) => _then(v as Authorize));

  @override
  Authorize get _value => super._value as Authorize;

  @override
  $Res call({
    Object? createUser = freezed,
    Object? host = freezed,
    Object? useSecureConnection = freezed,
  }) {
    return _then(Authorize(
      createUser: createUser == freezed
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as CreateUser,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      useSecureConnection: useSecureConnection == freezed
          ? _value.useSecureConnection
          : useSecureConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Authorize implements Authorize {
  const _$Authorize(
      {required this.createUser,
      required this.host,
      required this.useSecureConnection});

  @override
  final CreateUser createUser;
  @override
  final String host;
  @override
  final bool useSecureConnection;

  @override
  String toString() {
    return 'AuthorizationBlocEvent.authorize(createUser: $createUser, host: $host, useSecureConnection: $useSecureConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authorize &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.useSecureConnection, useSecureConnection) ||
                other.useSecureConnection == useSecureConnection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, createUser, host, useSecureConnection);

  @JsonKey(ignore: true)
  @override
  $AuthorizeCopyWith<Authorize> get copyWith =>
      _$AuthorizeCopyWithImpl<Authorize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CreateUser createUser, String host, bool useSecureConnection)
        authorize,
  }) {
    return authorize(createUser, host, useSecureConnection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            CreateUser createUser, String host, bool useSecureConnection)?
        authorize,
  }) {
    return authorize?.call(createUser, host, useSecureConnection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CreateUser createUser, String host, bool useSecureConnection)?
        authorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(createUser, host, useSecureConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorize value) authorize,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorize value)? authorize,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class Authorize implements AuthorizationBlocEvent {
  const factory Authorize(
      {required CreateUser createUser,
      required String host,
      required bool useSecureConnection}) = _$Authorize;

  @override
  CreateUser get createUser;
  @override
  String get host;
  @override
  bool get useSecureConnection;
  @override
  @JsonKey(ignore: true)
  $AuthorizeCopyWith<Authorize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthorizationBlocStateTearOff {
  const _$AuthorizationBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  AuthorizationStarted authorizationStarted() {
    return const AuthorizationStarted();
  }

  Authorized authorized() {
    return const Authorized();
  }

  FailedToAuthorize failedToAuthorize() {
    return const FailedToAuthorize();
  }
}

/// @nodoc
const $AuthorizationBlocState = _$AuthorizationBlocStateTearOff();

/// @nodoc
mixin _$AuthorizationBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizationStarted,
    required TResult Function() authorized,
    required TResult Function() failedToAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthorizationStarted value) authorizationStarted,
    required TResult Function(Authorized value) authorized,
    required TResult Function(FailedToAuthorize value) failedToAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationBlocStateCopyWith<$Res> {
  factory $AuthorizationBlocStateCopyWith(AuthorizationBlocState value,
          $Res Function(AuthorizationBlocState) then) =
      _$AuthorizationBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationBlocStateCopyWithImpl<$Res>
    implements $AuthorizationBlocStateCopyWith<$Res> {
  _$AuthorizationBlocStateCopyWithImpl(this._value, this._then);

  final AuthorizationBlocState _value;
  // ignore: unused_field
  final $Res Function(AuthorizationBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AuthorizationBlocStateCopyWithImpl<$Res>
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
    return 'AuthorizationBlocState.initial()';
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
    required TResult Function() authorizationStarted,
    required TResult Function() authorized,
    required TResult Function() failedToAuthorize,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
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
    required TResult Function(AuthorizationStarted value) authorizationStarted,
    required TResult Function(Authorized value) authorized,
    required TResult Function(FailedToAuthorize value) failedToAuthorize,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthorizationBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthorizationStartedCopyWith<$Res> {
  factory $AuthorizationStartedCopyWith(AuthorizationStarted value,
          $Res Function(AuthorizationStarted) then) =
      _$AuthorizationStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationStartedCopyWithImpl<$Res>
    extends _$AuthorizationBlocStateCopyWithImpl<$Res>
    implements $AuthorizationStartedCopyWith<$Res> {
  _$AuthorizationStartedCopyWithImpl(
      AuthorizationStarted _value, $Res Function(AuthorizationStarted) _then)
      : super(_value, (v) => _then(v as AuthorizationStarted));

  @override
  AuthorizationStarted get _value => super._value as AuthorizationStarted;
}

/// @nodoc

class _$AuthorizationStarted implements AuthorizationStarted {
  const _$AuthorizationStarted();

  @override
  String toString() {
    return 'AuthorizationBlocState.authorizationStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthorizationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizationStarted,
    required TResult Function() authorized,
    required TResult Function() failedToAuthorize,
  }) {
    return authorizationStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
  }) {
    return authorizationStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (authorizationStarted != null) {
      return authorizationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthorizationStarted value) authorizationStarted,
    required TResult Function(Authorized value) authorized,
    required TResult Function(FailedToAuthorize value) failedToAuthorize,
  }) {
    return authorizationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
  }) {
    return authorizationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (authorizationStarted != null) {
      return authorizationStarted(this);
    }
    return orElse();
  }
}

abstract class AuthorizationStarted implements AuthorizationBlocState {
  const factory AuthorizationStarted() = _$AuthorizationStarted;
}

/// @nodoc
abstract class $AuthorizedCopyWith<$Res> {
  factory $AuthorizedCopyWith(
          Authorized value, $Res Function(Authorized) then) =
      _$AuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizedCopyWithImpl<$Res>
    extends _$AuthorizationBlocStateCopyWithImpl<$Res>
    implements $AuthorizedCopyWith<$Res> {
  _$AuthorizedCopyWithImpl(Authorized _value, $Res Function(Authorized) _then)
      : super(_value, (v) => _then(v as Authorized));

  @override
  Authorized get _value => super._value as Authorized;
}

/// @nodoc

class _$Authorized implements Authorized {
  const _$Authorized();

  @override
  String toString() {
    return 'AuthorizationBlocState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizationStarted,
    required TResult Function() authorized,
    required TResult Function() failedToAuthorize,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthorizationStarted value) authorizationStarted,
    required TResult Function(Authorized value) authorized,
    required TResult Function(FailedToAuthorize value) failedToAuthorize,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class Authorized implements AuthorizationBlocState {
  const factory Authorized() = _$Authorized;
}

/// @nodoc
abstract class $FailedToAuthorizeCopyWith<$Res> {
  factory $FailedToAuthorizeCopyWith(
          FailedToAuthorize value, $Res Function(FailedToAuthorize) then) =
      _$FailedToAuthorizeCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedToAuthorizeCopyWithImpl<$Res>
    extends _$AuthorizationBlocStateCopyWithImpl<$Res>
    implements $FailedToAuthorizeCopyWith<$Res> {
  _$FailedToAuthorizeCopyWithImpl(
      FailedToAuthorize _value, $Res Function(FailedToAuthorize) _then)
      : super(_value, (v) => _then(v as FailedToAuthorize));

  @override
  FailedToAuthorize get _value => super._value as FailedToAuthorize;
}

/// @nodoc

class _$FailedToAuthorize implements FailedToAuthorize {
  const _$FailedToAuthorize();

  @override
  String toString() {
    return 'AuthorizationBlocState.failedToAuthorize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FailedToAuthorize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authorizationStarted,
    required TResult Function() authorized,
    required TResult Function() failedToAuthorize,
  }) {
    return failedToAuthorize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
  }) {
    return failedToAuthorize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authorizationStarted,
    TResult Function()? authorized,
    TResult Function()? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (failedToAuthorize != null) {
      return failedToAuthorize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(AuthorizationStarted value) authorizationStarted,
    required TResult Function(Authorized value) authorized,
    required TResult Function(FailedToAuthorize value) failedToAuthorize,
  }) {
    return failedToAuthorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
  }) {
    return failedToAuthorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(AuthorizationStarted value)? authorizationStarted,
    TResult Function(Authorized value)? authorized,
    TResult Function(FailedToAuthorize value)? failedToAuthorize,
    required TResult orElse(),
  }) {
    if (failedToAuthorize != null) {
      return failedToAuthorize(this);
    }
    return orElse();
  }
}

abstract class FailedToAuthorize implements AuthorizationBlocState {
  const factory FailedToAuthorize() = _$FailedToAuthorize;
}
