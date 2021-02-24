// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocaleTearOff {
  const _$LocaleTearOff();

// ignore: unused_element
  _Locale call(
      {@required @HiveField(0) String languageCode,
      @HiveField(1) String countryCode}) {
    return _Locale(
      languageCode: languageCode,
      countryCode: countryCode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Locale = _$LocaleTearOff();

/// @nodoc
mixin _$Locale {
  @HiveField(0)
  String get languageCode;
  @HiveField(1)
  String get countryCode;

  @JsonKey(ignore: true)
  $LocaleCopyWith<Locale> get copyWith;
}

/// @nodoc
abstract class $LocaleCopyWith<$Res> {
  factory $LocaleCopyWith(Locale value, $Res Function(Locale) then) =
      _$LocaleCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String languageCode, @HiveField(1) String countryCode});
}

/// @nodoc
class _$LocaleCopyWithImpl<$Res> implements $LocaleCopyWith<$Res> {
  _$LocaleCopyWithImpl(this._value, this._then);

  final Locale _value;
  // ignore: unused_field
  final $Res Function(Locale) _then;

  @override
  $Res call({
    Object languageCode = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

/// @nodoc
abstract class _$LocaleCopyWith<$Res> implements $LocaleCopyWith<$Res> {
  factory _$LocaleCopyWith(_Locale value, $Res Function(_Locale) then) =
      __$LocaleCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String languageCode, @HiveField(1) String countryCode});
}

/// @nodoc
class __$LocaleCopyWithImpl<$Res> extends _$LocaleCopyWithImpl<$Res>
    implements _$LocaleCopyWith<$Res> {
  __$LocaleCopyWithImpl(_Locale _value, $Res Function(_Locale) _then)
      : super(_value, (v) => _then(v as _Locale));

  @override
  _Locale get _value => super._value as _Locale;

  @override
  $Res call({
    Object languageCode = freezed,
    Object countryCode = freezed,
  }) {
    return _then(_Locale(
      languageCode: languageCode == freezed
          ? _value.languageCode
          : languageCode as String,
      countryCode:
          countryCode == freezed ? _value.countryCode : countryCode as String,
    ));
  }
}

/// @nodoc
class _$_Locale implements _Locale {
  const _$_Locale(
      {@required @HiveField(0) this.languageCode,
      @HiveField(1) this.countryCode})
      : assert(languageCode != null);

  @override
  @HiveField(0)
  final String languageCode;
  @override
  @HiveField(1)
  final String countryCode;

  @override
  String toString() {
    return 'Locale(languageCode: $languageCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Locale &&
            (identical(other.languageCode, languageCode) ||
                const DeepCollectionEquality()
                    .equals(other.languageCode, languageCode)) &&
            (identical(other.countryCode, countryCode) ||
                const DeepCollectionEquality()
                    .equals(other.countryCode, countryCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(languageCode) ^
      const DeepCollectionEquality().hash(countryCode);

  @JsonKey(ignore: true)
  @override
  _$LocaleCopyWith<_Locale> get copyWith =>
      __$LocaleCopyWithImpl<_Locale>(this, _$identity);
}

abstract class _Locale implements Locale {
  const factory _Locale(
      {@required @HiveField(0) String languageCode,
      @HiveField(1) String countryCode}) = _$_Locale;

  @override
  @HiveField(0)
  String get languageCode;
  @override
  @HiveField(1)
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$LocaleCopyWith<_Locale> get copyWith;
}
