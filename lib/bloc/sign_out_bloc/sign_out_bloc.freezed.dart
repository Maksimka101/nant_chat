// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignOutBlocEventTearOff {
  const _$SignOutBlocEventTearOff();

  SignOut signOut() {
    return const SignOut();
  }
}

/// @nodoc
const $SignOutBlocEvent = _$SignOutBlocEventTearOff();

/// @nodoc
mixin _$SignOutBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutBlocEventCopyWith<$Res> {
  factory $SignOutBlocEventCopyWith(
          SignOutBlocEvent value, $Res Function(SignOutBlocEvent) then) =
      _$SignOutBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutBlocEventCopyWithImpl<$Res>
    implements $SignOutBlocEventCopyWith<$Res> {
  _$SignOutBlocEventCopyWithImpl(this._value, this._then);

  final SignOutBlocEvent _value;
  // ignore: unused_field
  final $Res Function(SignOutBlocEvent) _then;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> extends _$SignOutBlocEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'SignOutBlocEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements SignOutBlocEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
class _$SignOutBlocStateTearOff {
  const _$SignOutBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  InProgress inProgress() {
    return const InProgress();
  }

  CleanedSuccessfully cleanedSuccessfully() {
    return const CleanedSuccessfully();
  }

  Error error() {
    return const Error();
  }
}

/// @nodoc
const $SignOutBlocState = _$SignOutBlocStateTearOff();

/// @nodoc
mixin _$SignOutBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() cleanedSuccessfully,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(CleanedSuccessfully value) cleanedSuccessfully,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignOutBlocStateCopyWith<$Res> {
  factory $SignOutBlocStateCopyWith(
          SignOutBlocState value, $Res Function(SignOutBlocState) then) =
      _$SignOutBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutBlocStateCopyWithImpl<$Res>
    implements $SignOutBlocStateCopyWith<$Res> {
  _$SignOutBlocStateCopyWithImpl(this._value, this._then);

  final SignOutBlocState _value;
  // ignore: unused_field
  final $Res Function(SignOutBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SignOutBlocStateCopyWithImpl<$Res>
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
    return 'SignOutBlocState.initial()';
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
    required TResult Function() inProgress,
    required TResult Function() cleanedSuccessfully,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
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
    required TResult Function(InProgress value) inProgress,
    required TResult Function(CleanedSuccessfully value) cleanedSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SignOutBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $InProgressCopyWith<$Res> {
  factory $InProgressCopyWith(
          InProgress value, $Res Function(InProgress) then) =
      _$InProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$InProgressCopyWithImpl<$Res>
    extends _$SignOutBlocStateCopyWithImpl<$Res>
    implements $InProgressCopyWith<$Res> {
  _$InProgressCopyWithImpl(InProgress _value, $Res Function(InProgress) _then)
      : super(_value, (v) => _then(v as InProgress));

  @override
  InProgress get _value => super._value as InProgress;
}

/// @nodoc

class _$InProgress implements InProgress {
  const _$InProgress();

  @override
  String toString() {
    return 'SignOutBlocState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() cleanedSuccessfully,
    required TResult Function() error,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(CleanedSuccessfully value) cleanedSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgress implements SignOutBlocState {
  const factory InProgress() = _$InProgress;
}

/// @nodoc
abstract class $CleanedSuccessfullyCopyWith<$Res> {
  factory $CleanedSuccessfullyCopyWith(
          CleanedSuccessfully value, $Res Function(CleanedSuccessfully) then) =
      _$CleanedSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class _$CleanedSuccessfullyCopyWithImpl<$Res>
    extends _$SignOutBlocStateCopyWithImpl<$Res>
    implements $CleanedSuccessfullyCopyWith<$Res> {
  _$CleanedSuccessfullyCopyWithImpl(
      CleanedSuccessfully _value, $Res Function(CleanedSuccessfully) _then)
      : super(_value, (v) => _then(v as CleanedSuccessfully));

  @override
  CleanedSuccessfully get _value => super._value as CleanedSuccessfully;
}

/// @nodoc

class _$CleanedSuccessfully implements CleanedSuccessfully {
  const _$CleanedSuccessfully();

  @override
  String toString() {
    return 'SignOutBlocState.cleanedSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CleanedSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() cleanedSuccessfully,
    required TResult Function() error,
  }) {
    return cleanedSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
  }) {
    return cleanedSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (cleanedSuccessfully != null) {
      return cleanedSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InProgress value) inProgress,
    required TResult Function(CleanedSuccessfully value) cleanedSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return cleanedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return cleanedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (cleanedSuccessfully != null) {
      return cleanedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class CleanedSuccessfully implements SignOutBlocState {
  const factory CleanedSuccessfully() = _$CleanedSuccessfully;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SignOutBlocStateCopyWithImpl<$Res>
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
    return 'SignOutBlocState.error()';
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
    required TResult Function() inProgress,
    required TResult Function() cleanedSuccessfully,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? cleanedSuccessfully,
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
    required TResult Function(InProgress value) inProgress,
    required TResult Function(CleanedSuccessfully value) cleanedSuccessfully,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InProgress value)? inProgress,
    TResult Function(CleanedSuccessfully value)? cleanedSuccessfully,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SignOutBlocState {
  const factory Error() = _$Error;
}
