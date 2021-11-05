// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_host_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppHostBlocEventTearOff {
  const _$AppHostBlocEventTearOff();

  _LoadAppHost loadAppHost() {
    return const _LoadAppHost();
  }

  _SetAppHost setAppHost(
      {required String host, required bool useSecureConnection}) {
    return _SetAppHost(
      host: host,
      useSecureConnection: useSecureConnection,
    );
  }
}

/// @nodoc
const $AppHostBlocEvent = _$AppHostBlocEventTearOff();

/// @nodoc
mixin _$AppHostBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAppHost,
    required TResult Function(String host, bool useSecureConnection) setAppHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadAppHost,
    TResult Function(String host, bool useSecureConnection)? setAppHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAppHost,
    TResult Function(String host, bool useSecureConnection)? setAppHost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAppHost value) loadAppHost,
    required TResult Function(_SetAppHost value) setAppHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadAppHost value)? loadAppHost,
    TResult Function(_SetAppHost value)? setAppHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAppHost value)? loadAppHost,
    TResult Function(_SetAppHost value)? setAppHost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHostBlocEventCopyWith<$Res> {
  factory $AppHostBlocEventCopyWith(
          AppHostBlocEvent value, $Res Function(AppHostBlocEvent) then) =
      _$AppHostBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppHostBlocEventCopyWithImpl<$Res>
    implements $AppHostBlocEventCopyWith<$Res> {
  _$AppHostBlocEventCopyWithImpl(this._value, this._then);

  final AppHostBlocEvent _value;
  // ignore: unused_field
  final $Res Function(AppHostBlocEvent) _then;
}

/// @nodoc
abstract class _$LoadAppHostCopyWith<$Res> {
  factory _$LoadAppHostCopyWith(
          _LoadAppHost value, $Res Function(_LoadAppHost) then) =
      __$LoadAppHostCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadAppHostCopyWithImpl<$Res>
    extends _$AppHostBlocEventCopyWithImpl<$Res>
    implements _$LoadAppHostCopyWith<$Res> {
  __$LoadAppHostCopyWithImpl(
      _LoadAppHost _value, $Res Function(_LoadAppHost) _then)
      : super(_value, (v) => _then(v as _LoadAppHost));

  @override
  _LoadAppHost get _value => super._value as _LoadAppHost;
}

/// @nodoc

class _$_LoadAppHost implements _LoadAppHost {
  const _$_LoadAppHost();

  @override
  String toString() {
    return 'AppHostBlocEvent.loadAppHost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadAppHost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAppHost,
    required TResult Function(String host, bool useSecureConnection) setAppHost,
  }) {
    return loadAppHost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadAppHost,
    TResult Function(String host, bool useSecureConnection)? setAppHost,
  }) {
    return loadAppHost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAppHost,
    TResult Function(String host, bool useSecureConnection)? setAppHost,
    required TResult orElse(),
  }) {
    if (loadAppHost != null) {
      return loadAppHost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAppHost value) loadAppHost,
    required TResult Function(_SetAppHost value) setAppHost,
  }) {
    return loadAppHost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadAppHost value)? loadAppHost,
    TResult Function(_SetAppHost value)? setAppHost,
  }) {
    return loadAppHost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAppHost value)? loadAppHost,
    TResult Function(_SetAppHost value)? setAppHost,
    required TResult orElse(),
  }) {
    if (loadAppHost != null) {
      return loadAppHost(this);
    }
    return orElse();
  }
}

abstract class _LoadAppHost implements AppHostBlocEvent {
  const factory _LoadAppHost() = _$_LoadAppHost;
}

/// @nodoc
abstract class _$SetAppHostCopyWith<$Res> {
  factory _$SetAppHostCopyWith(
          _SetAppHost value, $Res Function(_SetAppHost) then) =
      __$SetAppHostCopyWithImpl<$Res>;
  $Res call({String host, bool useSecureConnection});
}

/// @nodoc
class __$SetAppHostCopyWithImpl<$Res>
    extends _$AppHostBlocEventCopyWithImpl<$Res>
    implements _$SetAppHostCopyWith<$Res> {
  __$SetAppHostCopyWithImpl(
      _SetAppHost _value, $Res Function(_SetAppHost) _then)
      : super(_value, (v) => _then(v as _SetAppHost));

  @override
  _SetAppHost get _value => super._value as _SetAppHost;

  @override
  $Res call({
    Object? host = freezed,
    Object? useSecureConnection = freezed,
  }) {
    return _then(_SetAppHost(
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

class _$_SetAppHost implements _SetAppHost {
  const _$_SetAppHost({required this.host, required this.useSecureConnection});

  @override
  final String host;
  @override
  final bool useSecureConnection;

  @override
  String toString() {
    return 'AppHostBlocEvent.setAppHost(host: $host, useSecureConnection: $useSecureConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetAppHost &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.useSecureConnection, useSecureConnection) ||
                other.useSecureConnection == useSecureConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, useSecureConnection);

  @JsonKey(ignore: true)
  @override
  _$SetAppHostCopyWith<_SetAppHost> get copyWith =>
      __$SetAppHostCopyWithImpl<_SetAppHost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadAppHost,
    required TResult Function(String host, bool useSecureConnection) setAppHost,
  }) {
    return setAppHost(host, useSecureConnection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadAppHost,
    TResult Function(String host, bool useSecureConnection)? setAppHost,
  }) {
    return setAppHost?.call(host, useSecureConnection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadAppHost,
    TResult Function(String host, bool useSecureConnection)? setAppHost,
    required TResult orElse(),
  }) {
    if (setAppHost != null) {
      return setAppHost(host, useSecureConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadAppHost value) loadAppHost,
    required TResult Function(_SetAppHost value) setAppHost,
  }) {
    return setAppHost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadAppHost value)? loadAppHost,
    TResult Function(_SetAppHost value)? setAppHost,
  }) {
    return setAppHost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadAppHost value)? loadAppHost,
    TResult Function(_SetAppHost value)? setAppHost,
    required TResult orElse(),
  }) {
    if (setAppHost != null) {
      return setAppHost(this);
    }
    return orElse();
  }
}

abstract class _SetAppHost implements AppHostBlocEvent {
  const factory _SetAppHost(
      {required String host,
      required bool useSecureConnection}) = _$_SetAppHost;

  String get host;
  bool get useSecureConnection;
  @JsonKey(ignore: true)
  _$SetAppHostCopyWith<_SetAppHost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppHostBlocStateTearOff {
  const _$AppHostBlocStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _AppHostLoaded appHostLoaded() {
    return const _AppHostLoaded();
  }

  _AppHostEmpty appHostEmpty() {
    return const _AppHostEmpty();
  }
}

/// @nodoc
const $AppHostBlocState = _$AppHostBlocStateTearOff();

/// @nodoc
mixin _$AppHostBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appHostLoaded,
    required TResult Function() appHostEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppHostLoaded value) appHostLoaded,
    required TResult Function(_AppHostEmpty value) appHostEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHostBlocStateCopyWith<$Res> {
  factory $AppHostBlocStateCopyWith(
          AppHostBlocState value, $Res Function(AppHostBlocState) then) =
      _$AppHostBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppHostBlocStateCopyWithImpl<$Res>
    implements $AppHostBlocStateCopyWith<$Res> {
  _$AppHostBlocStateCopyWithImpl(this._value, this._then);

  final AppHostBlocState _value;
  // ignore: unused_field
  final $Res Function(AppHostBlocState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AppHostBlocStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppHostBlocState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appHostLoaded,
    required TResult Function() appHostEmpty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppHostLoaded value) appHostLoaded,
    required TResult Function(_AppHostEmpty value) appHostEmpty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppHostBlocState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AppHostLoadedCopyWith<$Res> {
  factory _$AppHostLoadedCopyWith(
          _AppHostLoaded value, $Res Function(_AppHostLoaded) then) =
      __$AppHostLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppHostLoadedCopyWithImpl<$Res>
    extends _$AppHostBlocStateCopyWithImpl<$Res>
    implements _$AppHostLoadedCopyWith<$Res> {
  __$AppHostLoadedCopyWithImpl(
      _AppHostLoaded _value, $Res Function(_AppHostLoaded) _then)
      : super(_value, (v) => _then(v as _AppHostLoaded));

  @override
  _AppHostLoaded get _value => super._value as _AppHostLoaded;
}

/// @nodoc

class _$_AppHostLoaded implements _AppHostLoaded {
  const _$_AppHostLoaded();

  @override
  String toString() {
    return 'AppHostBlocState.appHostLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppHostLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appHostLoaded,
    required TResult Function() appHostEmpty,
  }) {
    return appHostLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
  }) {
    return appHostLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
    required TResult orElse(),
  }) {
    if (appHostLoaded != null) {
      return appHostLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppHostLoaded value) appHostLoaded,
    required TResult Function(_AppHostEmpty value) appHostEmpty,
  }) {
    return appHostLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
  }) {
    return appHostLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
    required TResult orElse(),
  }) {
    if (appHostLoaded != null) {
      return appHostLoaded(this);
    }
    return orElse();
  }
}

abstract class _AppHostLoaded implements AppHostBlocState {
  const factory _AppHostLoaded() = _$_AppHostLoaded;
}

/// @nodoc
abstract class _$AppHostEmptyCopyWith<$Res> {
  factory _$AppHostEmptyCopyWith(
          _AppHostEmpty value, $Res Function(_AppHostEmpty) then) =
      __$AppHostEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppHostEmptyCopyWithImpl<$Res>
    extends _$AppHostBlocStateCopyWithImpl<$Res>
    implements _$AppHostEmptyCopyWith<$Res> {
  __$AppHostEmptyCopyWithImpl(
      _AppHostEmpty _value, $Res Function(_AppHostEmpty) _then)
      : super(_value, (v) => _then(v as _AppHostEmpty));

  @override
  _AppHostEmpty get _value => super._value as _AppHostEmpty;
}

/// @nodoc

class _$_AppHostEmpty implements _AppHostEmpty {
  const _$_AppHostEmpty();

  @override
  String toString() {
    return 'AppHostBlocState.appHostEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppHostEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() appHostLoaded,
    required TResult Function() appHostEmpty,
  }) {
    return appHostEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
  }) {
    return appHostEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? appHostLoaded,
    TResult Function()? appHostEmpty,
    required TResult orElse(),
  }) {
    if (appHostEmpty != null) {
      return appHostEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppHostLoaded value) appHostLoaded,
    required TResult Function(_AppHostEmpty value) appHostEmpty,
  }) {
    return appHostEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
  }) {
    return appHostEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppHostLoaded value)? appHostLoaded,
    TResult Function(_AppHostEmpty value)? appHostEmpty,
    required TResult orElse(),
  }) {
    if (appHostEmpty != null) {
      return appHostEmpty(this);
    }
    return orElse();
  }
}

abstract class _AppHostEmpty implements AppHostBlocState {
  const factory _AppHostEmpty() = _$_AppHostEmpty;
}
