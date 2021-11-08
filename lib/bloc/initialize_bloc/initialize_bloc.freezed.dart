// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'initialize_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitializeBlocEventTearOff {
  const _$InitializeBlocEventTearOff();

  InitializationStarted initializationStarted() {
    return const InitializationStarted();
  }
}

/// @nodoc
const $InitializeBlocEvent = _$InitializeBlocEventTearOff();

/// @nodoc
mixin _$InitializeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializationStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationStarted value)
        initializationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializationStarted value)? initializationStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationStarted value)? initializationStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitializationStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializationStarted,
  }) {
    return initializationStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializationStarted,
  }) {
    return initializationStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializationStarted,
    required TResult orElse(),
  }) {
    if (initializationStarted != null) {
      return initializationStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationStarted value)
        initializationStarted,
  }) {
    return initializationStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitializationStarted value)? initializationStarted,
  }) {
    return initializationStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationStarted value)? initializationStarted,
    required TResult orElse(),
  }) {
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
class _$InitializeBlocStateTearOff {
  const _$InitializeBlocStateTearOff();

  Initialized initialized() {
    return const Initialized();
  }

  UnInitialized unInitialized() {
    return const UnInitialized();
  }
}

/// @nodoc
const $InitializeBlocState = _$InitializeBlocStateTearOff();

/// @nodoc
mixin _$InitializeBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() unInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? unInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? unInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UnInitialized value) unInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UnInitialized value)? unInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UnInitialized value)? unInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() unInitialized,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? unInitialized,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? unInitialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UnInitialized value) unInitialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UnInitialized value)? unInitialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UnInitialized value)? unInitialized,
    required TResult orElse(),
  }) {
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() unInitialized,
  }) {
    return unInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? unInitialized,
  }) {
    return unInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? unInitialized,
    required TResult orElse(),
  }) {
    if (unInitialized != null) {
      return unInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialized value) initialized,
    required TResult Function(UnInitialized value) unInitialized,
  }) {
    return unInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UnInitialized value)? unInitialized,
  }) {
    return unInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialized value)? initialized,
    TResult Function(UnInitialized value)? unInitialized,
    required TResult orElse(),
  }) {
    if (unInitialized != null) {
      return unInitialized(this);
    }
    return orElse();
  }
}

abstract class UnInitialized implements InitializeBlocState {
  const factory UnInitialized() = _$UnInitialized;
}
