// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LocalizationBlocEventTearOff {
  const _$LocalizationBlocEventTearOff();

// ignore: unused_element
  LocalizationLoadStarted localizationLoadStarted() {
    return const LocalizationLoadStarted();
  }

// ignore: unused_element
  LocaleChanged localeChanged({@required Locale locale}) {
    return LocaleChanged(
      locale: locale,
    );
  }

// ignore: unused_element
  LocaleLoadedEvent localeLoaded(Locale locale) {
    return LocaleLoadedEvent(
      locale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizationBlocEvent = _$LocalizationBlocEventTearOff();

/// @nodoc
mixin _$LocalizationBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult localizationLoadStarted(),
    @required TResult localeChanged(Locale locale),
    @required TResult localeLoaded(Locale locale),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult localizationLoadStarted(),
    TResult localeChanged(Locale locale),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult localizationLoadStarted(LocalizationLoadStarted value),
    @required TResult localeChanged(LocaleChanged value),
    @required TResult localeLoaded(LocaleLoadedEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult localizationLoadStarted(LocalizationLoadStarted value),
    TResult localeChanged(LocaleChanged value),
    TResult localeLoaded(LocaleLoadedEvent value),
    @required TResult orElse(),
  });
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
    return identical(this, other) || (other is LocalizationLoadStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult localizationLoadStarted(),
    @required TResult localeChanged(Locale locale),
    @required TResult localeLoaded(Locale locale),
  }) {
    assert(localizationLoadStarted != null);
    assert(localeChanged != null);
    assert(localeLoaded != null);
    return localizationLoadStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult localizationLoadStarted(),
    TResult localeChanged(Locale locale),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localizationLoadStarted != null) {
      return localizationLoadStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult localizationLoadStarted(LocalizationLoadStarted value),
    @required TResult localeChanged(LocaleChanged value),
    @required TResult localeLoaded(LocaleLoadedEvent value),
  }) {
    assert(localizationLoadStarted != null);
    assert(localeChanged != null);
    assert(localeLoaded != null);
    return localizationLoadStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult localizationLoadStarted(LocalizationLoadStarted value),
    TResult localeChanged(LocaleChanged value),
    TResult localeLoaded(LocaleLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object locale = freezed,
  }) {
    return _then(LocaleChanged(
      locale: locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$LocaleChanged implements LocaleChanged {
  const _$LocaleChanged({@required this.locale}) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationBlocEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocaleChanged &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $LocaleChangedCopyWith<LocaleChanged> get copyWith =>
      _$LocaleChangedCopyWithImpl<LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult localizationLoadStarted(),
    @required TResult localeChanged(Locale locale),
    @required TResult localeLoaded(Locale locale),
  }) {
    assert(localizationLoadStarted != null);
    assert(localeChanged != null);
    assert(localeLoaded != null);
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult localizationLoadStarted(),
    TResult localeChanged(Locale locale),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult localizationLoadStarted(LocalizationLoadStarted value),
    @required TResult localeChanged(LocaleChanged value),
    @required TResult localeLoaded(LocaleLoadedEvent value),
  }) {
    assert(localizationLoadStarted != null);
    assert(localeChanged != null);
    assert(localeLoaded != null);
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult localizationLoadStarted(LocalizationLoadStarted value),
    TResult localeChanged(LocaleChanged value),
    TResult localeLoaded(LocaleLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class LocaleChanged implements LocalizationBlocEvent {
  const factory LocaleChanged({@required Locale locale}) = _$LocaleChanged;

  Locale get locale;
  @JsonKey(ignore: true)
  $LocaleChangedCopyWith<LocaleChanged> get copyWith;
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
    Object locale = freezed,
  }) {
    return _then(LocaleLoadedEvent(
      locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$LocaleLoadedEvent implements LocaleLoadedEvent {
  const _$LocaleLoadedEvent(this.locale) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationBlocEvent.localeLoaded(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocaleLoadedEvent &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $LocaleLoadedEventCopyWith<LocaleLoadedEvent> get copyWith =>
      _$LocaleLoadedEventCopyWithImpl<LocaleLoadedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult localizationLoadStarted(),
    @required TResult localeChanged(Locale locale),
    @required TResult localeLoaded(Locale locale),
  }) {
    assert(localizationLoadStarted != null);
    assert(localeChanged != null);
    assert(localeLoaded != null);
    return localeLoaded(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult localizationLoadStarted(),
    TResult localeChanged(Locale locale),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localeLoaded != null) {
      return localeLoaded(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult localizationLoadStarted(LocalizationLoadStarted value),
    @required TResult localeChanged(LocaleChanged value),
    @required TResult localeLoaded(LocaleLoadedEvent value),
  }) {
    assert(localizationLoadStarted != null);
    assert(localeChanged != null);
    assert(localeLoaded != null);
    return localeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult localizationLoadStarted(LocalizationLoadStarted value),
    TResult localeChanged(LocaleChanged value),
    TResult localeLoaded(LocaleLoadedEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $LocaleLoadedEventCopyWith<LocaleLoadedEvent> get copyWith;
}

/// @nodoc
class _$LocalizationBlocStateTearOff {
  const _$LocalizationBlocStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  LocaleLoaded localeLoaded(Locale locale) {
    return LocaleLoaded(
      locale,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizationBlocState = _$LocalizationBlocStateTearOff();

/// @nodoc
mixin _$LocalizationBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult localeLoaded(Locale locale),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult localeLoaded(LocaleLoaded value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult localeLoaded(LocaleLoaded value),
    @required TResult orElse(),
  });
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
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult localeLoaded(Locale locale),
  }) {
    assert(initial != null);
    assert(localeLoaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult localeLoaded(LocaleLoaded value),
  }) {
    assert(initial != null);
    assert(localeLoaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult localeLoaded(LocaleLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
    Object locale = freezed,
  }) {
    return _then(LocaleLoaded(
      locale == freezed ? _value.locale : locale as Locale,
    ));
  }
}

/// @nodoc
class _$LocaleLoaded implements LocaleLoaded {
  const _$LocaleLoaded(this.locale) : assert(locale != null);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocalizationBlocState.localeLoaded(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LocaleLoaded &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  $LocaleLoadedCopyWith<LocaleLoaded> get copyWith =>
      _$LocaleLoadedCopyWithImpl<LocaleLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult localeLoaded(Locale locale),
  }) {
    assert(initial != null);
    assert(localeLoaded != null);
    return localeLoaded(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult localeLoaded(Locale locale),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (localeLoaded != null) {
      return localeLoaded(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult localeLoaded(LocaleLoaded value),
  }) {
    assert(initial != null);
    assert(localeLoaded != null);
    return localeLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult localeLoaded(LocaleLoaded value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  $LocaleLoadedCopyWith<LocaleLoaded> get copyWith;
}
