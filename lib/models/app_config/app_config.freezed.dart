// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppConfigTearOff {
  const _$AppConfigTearOff();

  _AppConfig call(
      {required String hostName,
      required String webSocketHostName,
      required Locale defaultLocale,
      required AppTheme defaultAppTheme,
      required List<Locale> supportedLocales,
      required int chatPagination}) {
    return _AppConfig(
      hostName: hostName,
      webSocketHostName: webSocketHostName,
      defaultLocale: defaultLocale,
      defaultAppTheme: defaultAppTheme,
      supportedLocales: supportedLocales,
      chatPagination: chatPagination,
    );
  }
}

/// @nodoc
const $AppConfig = _$AppConfigTearOff();

/// @nodoc
mixin _$AppConfig {
  String get hostName => throw _privateConstructorUsedError;
  String get webSocketHostName => throw _privateConstructorUsedError;
  Locale get defaultLocale => throw _privateConstructorUsedError;
  AppTheme get defaultAppTheme => throw _privateConstructorUsedError;
  List<Locale> get supportedLocales => throw _privateConstructorUsedError;
  int get chatPagination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res>;
  $Res call(
      {String hostName,
      String webSocketHostName,
      Locale defaultLocale,
      AppTheme defaultAppTheme,
      List<Locale> supportedLocales,
      int chatPagination});

  $AppThemeCopyWith<$Res> get defaultAppTheme;
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  final AppConfig _value;
  // ignore: unused_field
  final $Res Function(AppConfig) _then;

  @override
  $Res call({
    Object? hostName = freezed,
    Object? webSocketHostName = freezed,
    Object? defaultLocale = freezed,
    Object? defaultAppTheme = freezed,
    Object? supportedLocales = freezed,
    Object? chatPagination = freezed,
  }) {
    return _then(_value.copyWith(
      hostName: hostName == freezed
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      webSocketHostName: webSocketHostName == freezed
          ? _value.webSocketHostName
          : webSocketHostName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      defaultAppTheme: defaultAppTheme == freezed
          ? _value.defaultAppTheme
          : defaultAppTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      supportedLocales: supportedLocales == freezed
          ? _value.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      chatPagination: chatPagination == freezed
          ? _value.chatPagination
          : chatPagination // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $AppThemeCopyWith<$Res> get defaultAppTheme {
    return $AppThemeCopyWith<$Res>(_value.defaultAppTheme, (value) {
      return _then(_value.copyWith(defaultAppTheme: value));
    });
  }
}

/// @nodoc
abstract class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) then) =
      __$AppConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {String hostName,
      String webSocketHostName,
      Locale defaultLocale,
      AppTheme defaultAppTheme,
      List<Locale> supportedLocales,
      int chatPagination});

  @override
  $AppThemeCopyWith<$Res> get defaultAppTheme;
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> extends _$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(_AppConfig _value, $Res Function(_AppConfig) _then)
      : super(_value, (v) => _then(v as _AppConfig));

  @override
  _AppConfig get _value => super._value as _AppConfig;

  @override
  $Res call({
    Object? hostName = freezed,
    Object? webSocketHostName = freezed,
    Object? defaultLocale = freezed,
    Object? defaultAppTheme = freezed,
    Object? supportedLocales = freezed,
    Object? chatPagination = freezed,
  }) {
    return _then(_AppConfig(
      hostName: hostName == freezed
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      webSocketHostName: webSocketHostName == freezed
          ? _value.webSocketHostName
          : webSocketHostName // ignore: cast_nullable_to_non_nullable
              as String,
      defaultLocale: defaultLocale == freezed
          ? _value.defaultLocale
          : defaultLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
      defaultAppTheme: defaultAppTheme == freezed
          ? _value.defaultAppTheme
          : defaultAppTheme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
      supportedLocales: supportedLocales == freezed
          ? _value.supportedLocales
          : supportedLocales // ignore: cast_nullable_to_non_nullable
              as List<Locale>,
      chatPagination: chatPagination == freezed
          ? _value.chatPagination
          : chatPagination // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppConfig implements _AppConfig {
  const _$_AppConfig(
      {required this.hostName,
      required this.webSocketHostName,
      required this.defaultLocale,
      required this.defaultAppTheme,
      required this.supportedLocales,
      required this.chatPagination});

  @override
  final String hostName;
  @override
  final String webSocketHostName;
  @override
  final Locale defaultLocale;
  @override
  final AppTheme defaultAppTheme;
  @override
  final List<Locale> supportedLocales;
  @override
  final int chatPagination;

  @override
  String toString() {
    return 'AppConfig(hostName: $hostName, webSocketHostName: $webSocketHostName, defaultLocale: $defaultLocale, defaultAppTheme: $defaultAppTheme, supportedLocales: $supportedLocales, chatPagination: $chatPagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppConfig &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.webSocketHostName, webSocketHostName) ||
                other.webSocketHostName == webSocketHostName) &&
            (identical(other.defaultLocale, defaultLocale) ||
                other.defaultLocale == defaultLocale) &&
            (identical(other.defaultAppTheme, defaultAppTheme) ||
                other.defaultAppTheme == defaultAppTheme) &&
            const DeepCollectionEquality()
                .equals(other.supportedLocales, supportedLocales) &&
            (identical(other.chatPagination, chatPagination) ||
                other.chatPagination == chatPagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hostName,
      webSocketHostName,
      defaultLocale,
      defaultAppTheme,
      const DeepCollectionEquality().hash(supportedLocales),
      chatPagination);

  @JsonKey(ignore: true)
  @override
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);
}

abstract class _AppConfig implements AppConfig {
  const factory _AppConfig(
      {required String hostName,
      required String webSocketHostName,
      required Locale defaultLocale,
      required AppTheme defaultAppTheme,
      required List<Locale> supportedLocales,
      required int chatPagination}) = _$_AppConfig;

  @override
  String get hostName;
  @override
  String get webSocketHostName;
  @override
  Locale get defaultLocale;
  @override
  AppTheme get defaultAppTheme;
  @override
  List<Locale> get supportedLocales;
  @override
  int get chatPagination;
  @override
  @JsonKey(ignore: true)
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
