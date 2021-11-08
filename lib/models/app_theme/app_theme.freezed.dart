// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppThemeTearOff {
  const _$AppThemeTearOff();

  AppLightTheme light() {
    return const AppLightTheme();
  }

  AppDarkTheme dark() {
    return const AppDarkTheme();
  }
}

/// @nodoc
const $AppTheme = _$AppThemeTearOff();

/// @nodoc
mixin _$AppTheme {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLightTheme value) light,
    required TResult Function(AppDarkTheme value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLightTheme value)? light,
    TResult Function(AppDarkTheme value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLightTheme value)? light,
    TResult Function(AppDarkTheme value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res> implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  final AppTheme _value;
  // ignore: unused_field
  final $Res Function(AppTheme) _then;
}

/// @nodoc
abstract class $AppLightThemeCopyWith<$Res> {
  factory $AppLightThemeCopyWith(
          AppLightTheme value, $Res Function(AppLightTheme) then) =
      _$AppLightThemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLightThemeCopyWithImpl<$Res> extends _$AppThemeCopyWithImpl<$Res>
    implements $AppLightThemeCopyWith<$Res> {
  _$AppLightThemeCopyWithImpl(
      AppLightTheme _value, $Res Function(AppLightTheme) _then)
      : super(_value, (v) => _then(v as AppLightTheme));

  @override
  AppLightTheme get _value => super._value as AppLightTheme;
}

/// @nodoc

class _$AppLightTheme implements AppLightTheme {
  const _$AppLightTheme();

  @override
  String toString() {
    return 'AppTheme.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppLightTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return light();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
  }) {
    return light?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLightTheme value) light,
    required TResult Function(AppDarkTheme value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLightTheme value)? light,
    TResult Function(AppDarkTheme value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLightTheme value)? light,
    TResult Function(AppDarkTheme value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class AppLightTheme implements AppTheme {
  const factory AppLightTheme() = _$AppLightTheme;
}

/// @nodoc
abstract class $AppDarkThemeCopyWith<$Res> {
  factory $AppDarkThemeCopyWith(
          AppDarkTheme value, $Res Function(AppDarkTheme) then) =
      _$AppDarkThemeCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppDarkThemeCopyWithImpl<$Res> extends _$AppThemeCopyWithImpl<$Res>
    implements $AppDarkThemeCopyWith<$Res> {
  _$AppDarkThemeCopyWithImpl(
      AppDarkTheme _value, $Res Function(AppDarkTheme) _then)
      : super(_value, (v) => _then(v as AppDarkTheme));

  @override
  AppDarkTheme get _value => super._value as AppDarkTheme;
}

/// @nodoc

class _$AppDarkTheme implements AppDarkTheme {
  const _$AppDarkTheme();

  @override
  String toString() {
    return 'AppTheme.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppDarkTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() light,
    required TResult Function() dark,
  }) {
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
  }) {
    return dark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? light,
    TResult Function()? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLightTheme value) light,
    required TResult Function(AppDarkTheme value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLightTheme value)? light,
    TResult Function(AppDarkTheme value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLightTheme value)? light,
    TResult Function(AppDarkTheme value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class AppDarkTheme implements AppTheme {
  const factory AppDarkTheme() = _$AppDarkTheme;
}
