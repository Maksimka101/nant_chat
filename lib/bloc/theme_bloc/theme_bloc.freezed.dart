// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeBlocEventTearOff {
  const _$ThemeBlocEventTearOff();

  ThemeLoadStarted themeLoadStarted() {
    return const ThemeLoadStarted();
  }

  ThemeSwitched themeSwitched() {
    return const ThemeSwitched();
  }

  ThemeLoadedEvent themeLoaded(AppTheme theme) {
    return ThemeLoadedEvent(
      theme,
    );
  }
}

/// @nodoc
const $ThemeBlocEvent = _$ThemeBlocEventTearOff();

/// @nodoc
mixin _$ThemeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeLoadStarted,
    required TResult Function() themeSwitched,
    required TResult Function(AppTheme theme) themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadStarted value) themeLoadStarted,
    required TResult Function(ThemeSwitched value) themeSwitched,
    required TResult Function(ThemeLoadedEvent value) themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocEventCopyWith<$Res> {
  factory $ThemeBlocEventCopyWith(
          ThemeBlocEvent value, $Res Function(ThemeBlocEvent) then) =
      _$ThemeBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeBlocEventCopyWithImpl<$Res>
    implements $ThemeBlocEventCopyWith<$Res> {
  _$ThemeBlocEventCopyWithImpl(this._value, this._then);

  final ThemeBlocEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeBlocEvent) _then;
}

/// @nodoc
abstract class $ThemeLoadStartedCopyWith<$Res> {
  factory $ThemeLoadStartedCopyWith(
          ThemeLoadStarted value, $Res Function(ThemeLoadStarted) then) =
      _$ThemeLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeLoadStartedCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res>
    implements $ThemeLoadStartedCopyWith<$Res> {
  _$ThemeLoadStartedCopyWithImpl(
      ThemeLoadStarted _value, $Res Function(ThemeLoadStarted) _then)
      : super(_value, (v) => _then(v as ThemeLoadStarted));

  @override
  ThemeLoadStarted get _value => super._value as ThemeLoadStarted;
}

/// @nodoc

class _$ThemeLoadStarted implements ThemeLoadStarted {
  const _$ThemeLoadStarted();

  @override
  String toString() {
    return 'ThemeBlocEvent.themeLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeLoadStarted,
    required TResult Function() themeSwitched,
    required TResult Function(AppTheme theme) themeLoaded,
  }) {
    return themeLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
  }) {
    return themeLoadStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeLoadStarted != null) {
      return themeLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadStarted value) themeLoadStarted,
    required TResult Function(ThemeSwitched value) themeSwitched,
    required TResult Function(ThemeLoadedEvent value) themeLoaded,
  }) {
    return themeLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
  }) {
    return themeLoadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeLoadStarted != null) {
      return themeLoadStarted(this);
    }
    return orElse();
  }
}

abstract class ThemeLoadStarted implements ThemeBlocEvent {
  const factory ThemeLoadStarted() = _$ThemeLoadStarted;
}

/// @nodoc
abstract class $ThemeSwitchedCopyWith<$Res> {
  factory $ThemeSwitchedCopyWith(
          ThemeSwitched value, $Res Function(ThemeSwitched) then) =
      _$ThemeSwitchedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeSwitchedCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res>
    implements $ThemeSwitchedCopyWith<$Res> {
  _$ThemeSwitchedCopyWithImpl(
      ThemeSwitched _value, $Res Function(ThemeSwitched) _then)
      : super(_value, (v) => _then(v as ThemeSwitched));

  @override
  ThemeSwitched get _value => super._value as ThemeSwitched;
}

/// @nodoc

class _$ThemeSwitched implements ThemeSwitched {
  const _$ThemeSwitched();

  @override
  String toString() {
    return 'ThemeBlocEvent.themeSwitched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeSwitched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeLoadStarted,
    required TResult Function() themeSwitched,
    required TResult Function(AppTheme theme) themeLoaded,
  }) {
    return themeSwitched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
  }) {
    return themeSwitched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeSwitched != null) {
      return themeSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadStarted value) themeLoadStarted,
    required TResult Function(ThemeSwitched value) themeSwitched,
    required TResult Function(ThemeLoadedEvent value) themeLoaded,
  }) {
    return themeSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
  }) {
    return themeSwitched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeSwitched != null) {
      return themeSwitched(this);
    }
    return orElse();
  }
}

abstract class ThemeSwitched implements ThemeBlocEvent {
  const factory ThemeSwitched() = _$ThemeSwitched;
}

/// @nodoc
abstract class $ThemeLoadedEventCopyWith<$Res> {
  factory $ThemeLoadedEventCopyWith(
          ThemeLoadedEvent value, $Res Function(ThemeLoadedEvent) then) =
      _$ThemeLoadedEventCopyWithImpl<$Res>;
  $Res call({AppTheme theme});

  $AppThemeCopyWith<$Res> get theme;
}

/// @nodoc
class _$ThemeLoadedEventCopyWithImpl<$Res>
    extends _$ThemeBlocEventCopyWithImpl<$Res>
    implements $ThemeLoadedEventCopyWith<$Res> {
  _$ThemeLoadedEventCopyWithImpl(
      ThemeLoadedEvent _value, $Res Function(ThemeLoadedEvent) _then)
      : super(_value, (v) => _then(v as ThemeLoadedEvent));

  @override
  ThemeLoadedEvent get _value => super._value as ThemeLoadedEvent;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(ThemeLoadedEvent(
      theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }

  @override
  $AppThemeCopyWith<$Res> get theme {
    return $AppThemeCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value));
    });
  }
}

/// @nodoc

class _$ThemeLoadedEvent implements ThemeLoadedEvent {
  const _$ThemeLoadedEvent(this.theme);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'ThemeBlocEvent.themeLoaded(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeLoadedEvent &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  $ThemeLoadedEventCopyWith<ThemeLoadedEvent> get copyWith =>
      _$ThemeLoadedEventCopyWithImpl<ThemeLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() themeLoadStarted,
    required TResult Function() themeSwitched,
    required TResult Function(AppTheme theme) themeLoaded,
  }) {
    return themeLoaded(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
  }) {
    return themeLoaded?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? themeLoadStarted,
    TResult Function()? themeSwitched,
    TResult Function(AppTheme theme)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeLoaded != null) {
      return themeLoaded(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadStarted value) themeLoadStarted,
    required TResult Function(ThemeSwitched value) themeSwitched,
    required TResult Function(ThemeLoadedEvent value) themeLoaded,
  }) {
    return themeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
  }) {
    return themeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadStarted value)? themeLoadStarted,
    TResult Function(ThemeSwitched value)? themeSwitched,
    TResult Function(ThemeLoadedEvent value)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeLoaded != null) {
      return themeLoaded(this);
    }
    return orElse();
  }
}

abstract class ThemeLoadedEvent implements ThemeBlocEvent {
  const factory ThemeLoadedEvent(AppTheme theme) = _$ThemeLoadedEvent;

  AppTheme get theme;
  @JsonKey(ignore: true)
  $ThemeLoadedEventCopyWith<ThemeLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThemeBlocStateTearOff {
  const _$ThemeBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ThemeLoaded themeLoaded(AppTheme appTheme) {
    return ThemeLoaded(
      appTheme,
    );
  }
}

/// @nodoc
const $ThemeBlocState = _$ThemeBlocStateTearOff();

/// @nodoc
mixin _$ThemeBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppTheme appTheme) themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppTheme appTheme)? themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppTheme appTheme)? themeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ThemeLoaded value) themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ThemeLoaded value)? themeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ThemeLoaded value)? themeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlocStateCopyWith<$Res> {
  factory $ThemeBlocStateCopyWith(
          ThemeBlocState value, $Res Function(ThemeBlocState) then) =
      _$ThemeBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeBlocStateCopyWithImpl<$Res>
    implements $ThemeBlocStateCopyWith<$Res> {
  _$ThemeBlocStateCopyWithImpl(this._value, this._then);

  final ThemeBlocState _value;
  // ignore: unused_field
  final $Res Function(ThemeBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ThemeBlocStateCopyWithImpl<$Res>
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
    return 'ThemeBlocState.initial()';
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
    required TResult Function(AppTheme appTheme) themeLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppTheme appTheme)? themeLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppTheme appTheme)? themeLoaded,
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
    required TResult Function(ThemeLoaded value) themeLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ThemeLoaded value)? themeLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ThemeLoaded value)? themeLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ThemeBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ThemeLoadedCopyWith<$Res> {
  factory $ThemeLoadedCopyWith(
          ThemeLoaded value, $Res Function(ThemeLoaded) then) =
      _$ThemeLoadedCopyWithImpl<$Res>;
  $Res call({AppTheme appTheme});

  $AppThemeCopyWith<$Res> get appTheme;
}

/// @nodoc
class _$ThemeLoadedCopyWithImpl<$Res> extends _$ThemeBlocStateCopyWithImpl<$Res>
    implements $ThemeLoadedCopyWith<$Res> {
  _$ThemeLoadedCopyWithImpl(
      ThemeLoaded _value, $Res Function(ThemeLoaded) _then)
      : super(_value, (v) => _then(v as ThemeLoaded));

  @override
  ThemeLoaded get _value => super._value as ThemeLoaded;

  @override
  $Res call({
    Object? appTheme = freezed,
  }) {
    return _then(ThemeLoaded(
      appTheme == freezed
          ? _value.appTheme
          : appTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }

  @override
  $AppThemeCopyWith<$Res> get appTheme {
    return $AppThemeCopyWith<$Res>(_value.appTheme, (value) {
      return _then(_value.copyWith(appTheme: value));
    });
  }
}

/// @nodoc

class _$ThemeLoaded implements ThemeLoaded {
  const _$ThemeLoaded(this.appTheme);

  @override
  final AppTheme appTheme;

  @override
  String toString() {
    return 'ThemeBlocState.themeLoaded(appTheme: $appTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeLoaded &&
            (identical(other.appTheme, appTheme) ||
                other.appTheme == appTheme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appTheme);

  @JsonKey(ignore: true)
  @override
  $ThemeLoadedCopyWith<ThemeLoaded> get copyWith =>
      _$ThemeLoadedCopyWithImpl<ThemeLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppTheme appTheme) themeLoaded,
  }) {
    return themeLoaded(appTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppTheme appTheme)? themeLoaded,
  }) {
    return themeLoaded?.call(appTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppTheme appTheme)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeLoaded != null) {
      return themeLoaded(appTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ThemeLoaded value) themeLoaded,
  }) {
    return themeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ThemeLoaded value)? themeLoaded,
  }) {
    return themeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ThemeLoaded value)? themeLoaded,
    required TResult orElse(),
  }) {
    if (themeLoaded != null) {
      return themeLoaded(this);
    }
    return orElse();
  }
}

abstract class ThemeLoaded implements ThemeBlocState {
  const factory ThemeLoaded(AppTheme appTheme) = _$ThemeLoaded;

  AppTheme get appTheme;
  @JsonKey(ignore: true)
  $ThemeLoadedCopyWith<ThemeLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
