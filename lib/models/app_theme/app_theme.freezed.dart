// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppThemeTearOff {
  const _$AppThemeTearOff();

// ignore: unused_element
  AppLightTheme light() {
    return const AppLightTheme();
  }

// ignore: unused_element
  AppDarkTheme dark() {
    return const AppDarkTheme();
  }
}

/// @nodoc
// ignore: unused_element
const $AppTheme = _$AppThemeTearOff();

/// @nodoc
mixin _$AppTheme {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult light(),
    @required TResult dark(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult light(),
    TResult dark(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult light(AppLightTheme value),
    @required TResult dark(AppDarkTheme value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult light(AppLightTheme value),
    TResult dark(AppDarkTheme value),
    @required TResult orElse(),
  });
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
    return identical(this, other) || (other is AppLightTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult light(),
    @required TResult dark(),
  }) {
    assert(light != null);
    assert(dark != null);
    return light();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult light(),
    TResult dark(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (light != null) {
      return light();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult light(AppLightTheme value),
    @required TResult dark(AppDarkTheme value),
  }) {
    assert(light != null);
    assert(dark != null);
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult light(AppLightTheme value),
    TResult dark(AppDarkTheme value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    return identical(this, other) || (other is AppDarkTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult light(),
    @required TResult dark(),
  }) {
    assert(light != null);
    assert(dark != null);
    return dark();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult light(),
    TResult dark(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dark != null) {
      return dark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult light(AppLightTheme value),
    @required TResult dark(AppDarkTheme value),
  }) {
    assert(light != null);
    assert(dark != null);
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult light(AppLightTheme value),
    TResult dark(AppDarkTheme value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class AppDarkTheme implements AppTheme {
  const factory AppDarkTheme() = _$AppDarkTheme;
}
