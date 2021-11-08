// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_app_host_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditAppHostBlocEventTearOff {
  const _$EditAppHostBlocEventTearOff();

  LoadAppHost loadAppHost() {
    return const LoadAppHost();
  }

  SetAppHost setAppHost(
      {required String host, required bool useSecureConnection}) {
    return SetAppHost(
      host: host,
      useSecureConnection: useSecureConnection,
    );
  }
}

/// @nodoc
const $EditAppHostBlocEvent = _$EditAppHostBlocEventTearOff();

/// @nodoc
mixin _$EditAppHostBlocEvent {
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
    required TResult Function(LoadAppHost value) loadAppHost,
    required TResult Function(SetAppHost value) setAppHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAppHost value)? loadAppHost,
    TResult Function(SetAppHost value)? setAppHost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAppHost value)? loadAppHost,
    TResult Function(SetAppHost value)? setAppHost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAppHostBlocEventCopyWith<$Res> {
  factory $EditAppHostBlocEventCopyWith(EditAppHostBlocEvent value,
          $Res Function(EditAppHostBlocEvent) then) =
      _$EditAppHostBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAppHostBlocEventCopyWithImpl<$Res>
    implements $EditAppHostBlocEventCopyWith<$Res> {
  _$EditAppHostBlocEventCopyWithImpl(this._value, this._then);

  final EditAppHostBlocEvent _value;
  // ignore: unused_field
  final $Res Function(EditAppHostBlocEvent) _then;
}

/// @nodoc
abstract class $LoadAppHostCopyWith<$Res> {
  factory $LoadAppHostCopyWith(
          LoadAppHost value, $Res Function(LoadAppHost) then) =
      _$LoadAppHostCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadAppHostCopyWithImpl<$Res>
    extends _$EditAppHostBlocEventCopyWithImpl<$Res>
    implements $LoadAppHostCopyWith<$Res> {
  _$LoadAppHostCopyWithImpl(
      LoadAppHost _value, $Res Function(LoadAppHost) _then)
      : super(_value, (v) => _then(v as LoadAppHost));

  @override
  LoadAppHost get _value => super._value as LoadAppHost;
}

/// @nodoc

class _$LoadAppHost implements LoadAppHost {
  const _$LoadAppHost();

  @override
  String toString() {
    return 'EditAppHostBlocEvent.loadAppHost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadAppHost);
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
    required TResult Function(LoadAppHost value) loadAppHost,
    required TResult Function(SetAppHost value) setAppHost,
  }) {
    return loadAppHost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAppHost value)? loadAppHost,
    TResult Function(SetAppHost value)? setAppHost,
  }) {
    return loadAppHost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAppHost value)? loadAppHost,
    TResult Function(SetAppHost value)? setAppHost,
    required TResult orElse(),
  }) {
    if (loadAppHost != null) {
      return loadAppHost(this);
    }
    return orElse();
  }
}

abstract class LoadAppHost implements EditAppHostBlocEvent {
  const factory LoadAppHost() = _$LoadAppHost;
}

/// @nodoc
abstract class $SetAppHostCopyWith<$Res> {
  factory $SetAppHostCopyWith(
          SetAppHost value, $Res Function(SetAppHost) then) =
      _$SetAppHostCopyWithImpl<$Res>;
  $Res call({String host, bool useSecureConnection});
}

/// @nodoc
class _$SetAppHostCopyWithImpl<$Res>
    extends _$EditAppHostBlocEventCopyWithImpl<$Res>
    implements $SetAppHostCopyWith<$Res> {
  _$SetAppHostCopyWithImpl(SetAppHost _value, $Res Function(SetAppHost) _then)
      : super(_value, (v) => _then(v as SetAppHost));

  @override
  SetAppHost get _value => super._value as SetAppHost;

  @override
  $Res call({
    Object? host = freezed,
    Object? useSecureConnection = freezed,
  }) {
    return _then(SetAppHost(
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

class _$SetAppHost implements SetAppHost {
  const _$SetAppHost({required this.host, required this.useSecureConnection});

  @override
  final String host;
  @override
  final bool useSecureConnection;

  @override
  String toString() {
    return 'EditAppHostBlocEvent.setAppHost(host: $host, useSecureConnection: $useSecureConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetAppHost &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.useSecureConnection, useSecureConnection) ||
                other.useSecureConnection == useSecureConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host, useSecureConnection);

  @JsonKey(ignore: true)
  @override
  $SetAppHostCopyWith<SetAppHost> get copyWith =>
      _$SetAppHostCopyWithImpl<SetAppHost>(this, _$identity);

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
    required TResult Function(LoadAppHost value) loadAppHost,
    required TResult Function(SetAppHost value) setAppHost,
  }) {
    return setAppHost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAppHost value)? loadAppHost,
    TResult Function(SetAppHost value)? setAppHost,
  }) {
    return setAppHost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAppHost value)? loadAppHost,
    TResult Function(SetAppHost value)? setAppHost,
    required TResult orElse(),
  }) {
    if (setAppHost != null) {
      return setAppHost(this);
    }
    return orElse();
  }
}

abstract class SetAppHost implements EditAppHostBlocEvent {
  const factory SetAppHost(
      {required String host, required bool useSecureConnection}) = _$SetAppHost;

  String get host;
  bool get useSecureConnection;
  @JsonKey(ignore: true)
  $SetAppHostCopyWith<SetAppHost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditAppHostBlocStateTearOff {
  const _$EditAppHostBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  HostSetStarted hostSetStarted() {
    return const HostSetStarted();
  }

  AppHostLoaded hostSetSuccessfully(AppHostInfo? hostInfo) {
    return AppHostLoaded(
      hostInfo,
    );
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $EditAppHostBlocState = _$EditAppHostBlocStateTearOff();

/// @nodoc
mixin _$EditAppHostBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hostSetStarted,
    required TResult Function(AppHostInfo? hostInfo) hostSetSuccessfully,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HostSetStarted value) hostSetStarted,
    required TResult Function(AppHostLoaded value) hostSetSuccessfully,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAppHostBlocStateCopyWith<$Res> {
  factory $EditAppHostBlocStateCopyWith(EditAppHostBlocState value,
          $Res Function(EditAppHostBlocState) then) =
      _$EditAppHostBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAppHostBlocStateCopyWithImpl<$Res>
    implements $EditAppHostBlocStateCopyWith<$Res> {
  _$EditAppHostBlocStateCopyWithImpl(this._value, this._then);

  final EditAppHostBlocState _value;
  // ignore: unused_field
  final $Res Function(EditAppHostBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$EditAppHostBlocStateCopyWithImpl<$Res>
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
    return 'EditAppHostBlocState.initial()';
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
    required TResult Function() hostSetStarted,
    required TResult Function(AppHostInfo? hostInfo) hostSetSuccessfully,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
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
    required TResult Function(HostSetStarted value) hostSetStarted,
    required TResult Function(AppHostLoaded value) hostSetSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EditAppHostBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $HostSetStartedCopyWith<$Res> {
  factory $HostSetStartedCopyWith(
          HostSetStarted value, $Res Function(HostSetStarted) then) =
      _$HostSetStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HostSetStartedCopyWithImpl<$Res>
    extends _$EditAppHostBlocStateCopyWithImpl<$Res>
    implements $HostSetStartedCopyWith<$Res> {
  _$HostSetStartedCopyWithImpl(
      HostSetStarted _value, $Res Function(HostSetStarted) _then)
      : super(_value, (v) => _then(v as HostSetStarted));

  @override
  HostSetStarted get _value => super._value as HostSetStarted;
}

/// @nodoc

class _$HostSetStarted implements HostSetStarted {
  const _$HostSetStarted();

  @override
  String toString() {
    return 'EditAppHostBlocState.hostSetStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HostSetStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hostSetStarted,
    required TResult Function(AppHostInfo? hostInfo) hostSetSuccessfully,
    required TResult Function() error,
  }) {
    return hostSetStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
  }) {
    return hostSetStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (hostSetStarted != null) {
      return hostSetStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HostSetStarted value) hostSetStarted,
    required TResult Function(AppHostLoaded value) hostSetSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return hostSetStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return hostSetStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (hostSetStarted != null) {
      return hostSetStarted(this);
    }
    return orElse();
  }
}

abstract class HostSetStarted implements EditAppHostBlocState {
  const factory HostSetStarted() = _$HostSetStarted;
}

/// @nodoc
abstract class $AppHostLoadedCopyWith<$Res> {
  factory $AppHostLoadedCopyWith(
          AppHostLoaded value, $Res Function(AppHostLoaded) then) =
      _$AppHostLoadedCopyWithImpl<$Res>;
  $Res call({AppHostInfo? hostInfo});

  $AppHostInfoCopyWith<$Res>? get hostInfo;
}

/// @nodoc
class _$AppHostLoadedCopyWithImpl<$Res>
    extends _$EditAppHostBlocStateCopyWithImpl<$Res>
    implements $AppHostLoadedCopyWith<$Res> {
  _$AppHostLoadedCopyWithImpl(
      AppHostLoaded _value, $Res Function(AppHostLoaded) _then)
      : super(_value, (v) => _then(v as AppHostLoaded));

  @override
  AppHostLoaded get _value => super._value as AppHostLoaded;

  @override
  $Res call({
    Object? hostInfo = freezed,
  }) {
    return _then(AppHostLoaded(
      hostInfo == freezed
          ? _value.hostInfo
          : hostInfo // ignore: cast_nullable_to_non_nullable
              as AppHostInfo?,
    ));
  }

  @override
  $AppHostInfoCopyWith<$Res>? get hostInfo {
    if (_value.hostInfo == null) {
      return null;
    }

    return $AppHostInfoCopyWith<$Res>(_value.hostInfo!, (value) {
      return _then(_value.copyWith(hostInfo: value));
    });
  }
}

/// @nodoc

class _$AppHostLoaded implements AppHostLoaded {
  const _$AppHostLoaded(this.hostInfo);

  @override
  final AppHostInfo? hostInfo;

  @override
  String toString() {
    return 'EditAppHostBlocState.hostSetSuccessfully(hostInfo: $hostInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppHostLoaded &&
            (identical(other.hostInfo, hostInfo) ||
                other.hostInfo == hostInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostInfo);

  @JsonKey(ignore: true)
  @override
  $AppHostLoadedCopyWith<AppHostLoaded> get copyWith =>
      _$AppHostLoadedCopyWithImpl<AppHostLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hostSetStarted,
    required TResult Function(AppHostInfo? hostInfo) hostSetSuccessfully,
    required TResult Function() error,
  }) {
    return hostSetSuccessfully(hostInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
  }) {
    return hostSetSuccessfully?.call(hostInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (hostSetSuccessfully != null) {
      return hostSetSuccessfully(hostInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HostSetStarted value) hostSetStarted,
    required TResult Function(AppHostLoaded value) hostSetSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return hostSetSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return hostSetSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (hostSetSuccessfully != null) {
      return hostSetSuccessfully(this);
    }
    return orElse();
  }
}

abstract class AppHostLoaded implements EditAppHostBlocState {
  const factory AppHostLoaded(AppHostInfo? hostInfo) = _$AppHostLoaded;

  AppHostInfo? get hostInfo;
  @JsonKey(ignore: true)
  $AppHostLoadedCopyWith<AppHostLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$EditAppHostBlocStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'EditAppHostBlocState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() hostSetStarted,
    required TResult Function(AppHostInfo? hostInfo) hostSetSuccessfully,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? hostSetStarted,
    TResult Function(AppHostInfo? hostInfo)? hostSetSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(HostSetStarted value) hostSetStarted,
    required TResult Function(AppHostLoaded value) hostSetSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(HostSetStarted value)? hostSetStarted,
    TResult Function(AppHostLoaded value)? hostSetSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements EditAppHostBlocState {
  const factory Error() = _$Error;
}
