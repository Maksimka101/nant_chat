// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalizationBlocEventTearOff {
  const _$LocalizationBlocEventTearOff();

  LocalizationLoadStarted localizationLoadStarted() {
    return const LocalizationLoadStarted();
  }

  LocaleChanged localeChanged({required Locale locale}) {
    return LocaleChanged(
      locale: locale,
    );
  }

  LocaleLoadedEvent localeLoaded(Locale locale) {
    return LocaleLoadedEvent(
      locale,
    );
  }
}

/// @nodoc
const $LocalizationBlocEvent = _$LocalizationBlocEventTearOff();

/// @nodoc
mixin _$LocalizationBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localizationLoadStarted,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationLoadStarted value)
        localizationLoadStarted,
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(LocaleLoadedEvent value) localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationBlocEventCopyWith<$Res> {
  factory $LocalizationBlocEventCopyWith(LocalizationBlocEvent value,
          $Res Function(LocalizationBlocEvent) then) =
      _$LocalizationBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalizationBlocEventCopyWithImpl<$Res>
    implements $LocalizationBlocEventCopyWith<$Res> {
  _$LocalizationBlocEventCopyWithImpl(this._value, this._then);

  final LocalizationBlocEvent _value;
  // ignore: unused_field
  final $Res Function(LocalizationBlocEvent) _then;
}

/// @nodoc
abstract class $LocalizationLoadStartedCopyWith<$Res> {
  factory $LocalizationLoadStartedCopyWith(LocalizationLoadStarted value,
          $Res Function(LocalizationLoadStarted) then) =
      _$LocalizationLoadStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalizationLoadStartedCopyWithImpl<$Res>
    extends _$LocalizationBlocEventCopyWithImpl<$Res>
    implements $LocalizationLoadStartedCopyWith<$Res> {
  _$LocalizationLoadStartedCopyWithImpl(LocalizationLoadStarted _value,
      $Res Function(LocalizationLoadStarted) _then)
      : super(_value, (v) => _then(v as LocalizationLoadStarted));

  @override
  LocalizationLoadStarted get _value => super._value as LocalizationLoadStarted;
}

/// @nodoc

class _$LocalizationLoadStarted implements LocalizationLoadStarted {
  const _$LocalizationLoadStarted();

  @override
  String toString() {
    return 'LocalizationBlocEvent.localizationLoadStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocalizationLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localizationLoadStarted,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeLoaded,
  }) {
    return localizationLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
  }) {
    return localizationLoadStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localizationLoadStarted != null) {
      return localizationLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationLoadStarted value)
        localizationLoadStarted,
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(LocaleLoadedEvent value) localeLoaded,
  }) {
    return localizationLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
  }) {
    return localizationLoadStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localizationLoadStarted != null) {
      return localizationLoadStarted(this);
    }
    return orElse();
  }
}

abstract class LocalizationLoadStarted implements LocalizationBlocEvent {
  const factory LocalizationLoadStarted() = _$LocalizationLoadStarted;
}

/// @nodoc
abstract class $LocaleChangedCopyWith<$Res> {
  factory $LocaleChangedCopyWith(
          LocaleChanged value, $Res Function(LocaleChanged) then) =
      _$LocaleChangedCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleChangedCopyWithImpl<$Res>
    extends _$LocalizationBlocEventCopyWithImpl<$Res>
    implements $LocaleChangedCopyWith<$Res> {
  _$LocaleChangedCopyWithImpl(
      LocaleChanged _value, $Res Function(LocaleChanged) _then)
      : super(_value, (v) => _then(v as LocaleChanged));

  @override
  LocaleChanged get _value => super._value as LocaleChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(LocaleChanged(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleChanged implements LocaleChanged {
  const _$LocaleChanged({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationBlocEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleChanged &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  $LocaleChangedCopyWith<LocaleChanged> get copyWith =>
      _$LocaleChangedCopyWithImpl<LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localizationLoadStarted,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeLoaded,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationLoadStarted value)
        localizationLoadStarted,
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(LocaleLoadedEvent value) localeLoaded,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class LocaleChanged implements LocalizationBlocEvent {
  const factory LocaleChanged({required Locale locale}) = _$LocaleChanged;

  Locale get locale;
  @JsonKey(ignore: true)
  $LocaleChangedCopyWith<LocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleLoadedEventCopyWith<$Res> {
  factory $LocaleLoadedEventCopyWith(
          LocaleLoadedEvent value, $Res Function(LocaleLoadedEvent) then) =
      _$LocaleLoadedEventCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleLoadedEventCopyWithImpl<$Res>
    extends _$LocalizationBlocEventCopyWithImpl<$Res>
    implements $LocaleLoadedEventCopyWith<$Res> {
  _$LocaleLoadedEventCopyWithImpl(
      LocaleLoadedEvent _value, $Res Function(LocaleLoadedEvent) _then)
      : super(_value, (v) => _then(v as LocaleLoadedEvent));

  @override
  LocaleLoadedEvent get _value => super._value as LocaleLoadedEvent;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(LocaleLoadedEvent(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleLoadedEvent implements LocaleLoadedEvent {
  const _$LocaleLoadedEvent(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationBlocEvent.localeLoaded(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleLoadedEvent &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  $LocaleLoadedEventCopyWith<LocaleLoadedEvent> get copyWith =>
      _$LocaleLoadedEventCopyWithImpl<LocaleLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() localizationLoadStarted,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeLoaded,
  }) {
    return localeLoaded(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
  }) {
    return localeLoaded?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? localizationLoadStarted,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localeLoaded != null) {
      return localeLoaded(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocalizationLoadStarted value)
        localizationLoadStarted,
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(LocaleLoadedEvent value) localeLoaded,
  }) {
    return localeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
  }) {
    return localeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocalizationLoadStarted value)? localizationLoadStarted,
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(LocaleLoadedEvent value)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localeLoaded != null) {
      return localeLoaded(this);
    }
    return orElse();
  }
}

abstract class LocaleLoadedEvent implements LocalizationBlocEvent {
  const factory LocaleLoadedEvent(Locale locale) = _$LocaleLoadedEvent;

  Locale get locale;
  @JsonKey(ignore: true)
  $LocaleLoadedEventCopyWith<LocaleLoadedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocalizationBlocStateTearOff {
  const _$LocalizationBlocStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LocaleLoaded localeLoaded(Locale locale) {
    return LocaleLoaded(
      locale,
    );
  }
}

/// @nodoc
const $LocalizationBlocState = _$LocalizationBlocStateTearOff();

/// @nodoc
mixin _$LocalizationBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? localeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LocaleLoaded value) localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LocaleLoaded value)? localeLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LocaleLoaded value)? localeLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationBlocStateCopyWith<$Res> {
  factory $LocalizationBlocStateCopyWith(LocalizationBlocState value,
          $Res Function(LocalizationBlocState) then) =
      _$LocalizationBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalizationBlocStateCopyWithImpl<$Res>
    implements $LocalizationBlocStateCopyWith<$Res> {
  _$LocalizationBlocStateCopyWithImpl(this._value, this._then);

  final LocalizationBlocState _value;
  // ignore: unused_field
  final $Res Function(LocalizationBlocState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$LocalizationBlocStateCopyWithImpl<$Res>
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
    return 'LocalizationBlocState.initial()';
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
    required TResult Function(Locale locale) localeLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? localeLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? localeLoaded,
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
    required TResult Function(LocaleLoaded value) localeLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LocaleLoaded value)? localeLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LocaleLoaded value)? localeLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LocalizationBlocState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LocaleLoadedCopyWith<$Res> {
  factory $LocaleLoadedCopyWith(
          LocaleLoaded value, $Res Function(LocaleLoaded) then) =
      _$LocaleLoadedCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleLoadedCopyWithImpl<$Res>
    extends _$LocalizationBlocStateCopyWithImpl<$Res>
    implements $LocaleLoadedCopyWith<$Res> {
  _$LocaleLoadedCopyWithImpl(
      LocaleLoaded _value, $Res Function(LocaleLoaded) _then)
      : super(_value, (v) => _then(v as LocaleLoaded));

  @override
  LocaleLoaded get _value => super._value as LocaleLoaded;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(LocaleLoaded(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LocaleLoaded implements LocaleLoaded {
  const _$LocaleLoaded(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationBlocState.localeLoaded(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocaleLoaded &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  $LocaleLoadedCopyWith<LocaleLoaded> get copyWith =>
      _$LocaleLoadedCopyWithImpl<LocaleLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) localeLoaded,
  }) {
    return localeLoaded(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? localeLoaded,
  }) {
    return localeLoaded?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localeLoaded != null) {
      return localeLoaded(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LocaleLoaded value) localeLoaded,
  }) {
    return localeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LocaleLoaded value)? localeLoaded,
  }) {
    return localeLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LocaleLoaded value)? localeLoaded,
    required TResult orElse(),
  }) {
    if (localeLoaded != null) {
      return localeLoaded(this);
    }
    return orElse();
  }
}

abstract class LocaleLoaded implements LocalizationBlocState {
  const factory LocaleLoaded(Locale locale) = _$LocaleLoaded;

  Locale get locale;
  @JsonKey(ignore: true)
  $LocaleLoadedCopyWith<LocaleLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
