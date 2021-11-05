// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_host_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppHostInfoTearOff {
  const _$AppHostInfoTearOff();

  _AppHostInfo call(
      {required String hostName, required String webSocketHostName}) {
    return _AppHostInfo(
      hostName: hostName,
      webSocketHostName: webSocketHostName,
    );
  }
}

/// @nodoc
const $AppHostInfo = _$AppHostInfoTearOff();

/// @nodoc
mixin _$AppHostInfo {
  String get hostName => throw _privateConstructorUsedError;
  String get webSocketHostName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppHostInfoCopyWith<AppHostInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppHostInfoCopyWith<$Res> {
  factory $AppHostInfoCopyWith(
          AppHostInfo value, $Res Function(AppHostInfo) then) =
      _$AppHostInfoCopyWithImpl<$Res>;
  $Res call({String hostName, String webSocketHostName});
}

/// @nodoc
class _$AppHostInfoCopyWithImpl<$Res> implements $AppHostInfoCopyWith<$Res> {
  _$AppHostInfoCopyWithImpl(this._value, this._then);

  final AppHostInfo _value;
  // ignore: unused_field
  final $Res Function(AppHostInfo) _then;

  @override
  $Res call({
    Object? hostName = freezed,
    Object? webSocketHostName = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$AppHostInfoCopyWith<$Res>
    implements $AppHostInfoCopyWith<$Res> {
  factory _$AppHostInfoCopyWith(
          _AppHostInfo value, $Res Function(_AppHostInfo) then) =
      __$AppHostInfoCopyWithImpl<$Res>;
  @override
  $Res call({String hostName, String webSocketHostName});
}

/// @nodoc
class __$AppHostInfoCopyWithImpl<$Res> extends _$AppHostInfoCopyWithImpl<$Res>
    implements _$AppHostInfoCopyWith<$Res> {
  __$AppHostInfoCopyWithImpl(
      _AppHostInfo _value, $Res Function(_AppHostInfo) _then)
      : super(_value, (v) => _then(v as _AppHostInfo));

  @override
  _AppHostInfo get _value => super._value as _AppHostInfo;

  @override
  $Res call({
    Object? hostName = freezed,
    Object? webSocketHostName = freezed,
  }) {
    return _then(_AppHostInfo(
      hostName: hostName == freezed
          ? _value.hostName
          : hostName // ignore: cast_nullable_to_non_nullable
              as String,
      webSocketHostName: webSocketHostName == freezed
          ? _value.webSocketHostName
          : webSocketHostName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppHostInfo implements _AppHostInfo {
  const _$_AppHostInfo(
      {required this.hostName, required this.webSocketHostName});

  @override
  final String hostName;
  @override
  final String webSocketHostName;

  @override
  String toString() {
    return 'AppHostInfo(hostName: $hostName, webSocketHostName: $webSocketHostName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppHostInfo &&
            (identical(other.hostName, hostName) ||
                other.hostName == hostName) &&
            (identical(other.webSocketHostName, webSocketHostName) ||
                other.webSocketHostName == webSocketHostName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hostName, webSocketHostName);

  @JsonKey(ignore: true)
  @override
  _$AppHostInfoCopyWith<_AppHostInfo> get copyWith =>
      __$AppHostInfoCopyWithImpl<_AppHostInfo>(this, _$identity);
}

abstract class _AppHostInfo implements AppHostInfo {
  const factory _AppHostInfo(
      {required String hostName,
      required String webSocketHostName}) = _$_AppHostInfo;

  @override
  String get hostName;
  @override
  String get webSocketHostName;
  @override
  @JsonKey(ignore: true)
  _$AppHostInfoCopyWith<_AppHostInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
