// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call({@required @HiveField(0) String name}) {
    return _User(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @HiveField(0)
  String get name;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String name});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String name});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_User(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User({@required @HiveField(0) this.name}) : assert(name != null);

  @override
  @HiveField(0)
  final String name;

  @override
  String toString() {
    return 'User(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User({@required @HiveField(0) String name}) = _$_User;

  @override
  @HiveField(0)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}

/// @nodoc
class _$CreateUserTearOff {
  const _$CreateUserTearOff();

// ignore: unused_element
  _CreateUser call({@required String name}) {
    return _CreateUser(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateUser = _$CreateUserTearOff();

/// @nodoc
mixin _$CreateUser {
  String get name;

  @JsonKey(ignore: true)
  $CreateUserCopyWith<CreateUser> get copyWith;
}

/// @nodoc
abstract class $CreateUserCopyWith<$Res> {
  factory $CreateUserCopyWith(
          CreateUser value, $Res Function(CreateUser) then) =
      _$CreateUserCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CreateUserCopyWithImpl<$Res> implements $CreateUserCopyWith<$Res> {
  _$CreateUserCopyWithImpl(this._value, this._then);

  final CreateUser _value;
  // ignore: unused_field
  final $Res Function(CreateUser) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$CreateUserCopyWith<$Res> implements $CreateUserCopyWith<$Res> {
  factory _$CreateUserCopyWith(
          _CreateUser value, $Res Function(_CreateUser) then) =
      __$CreateUserCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$CreateUserCopyWithImpl<$Res> extends _$CreateUserCopyWithImpl<$Res>
    implements _$CreateUserCopyWith<$Res> {
  __$CreateUserCopyWithImpl(
      _CreateUser _value, $Res Function(_CreateUser) _then)
      : super(_value, (v) => _then(v as _CreateUser));

  @override
  _CreateUser get _value => super._value as _CreateUser;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_CreateUser(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_CreateUser implements _CreateUser {
  const _$_CreateUser({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateUser(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CreateUserCopyWith<_CreateUser> get copyWith =>
      __$CreateUserCopyWithImpl<_CreateUser>(this, _$identity);
}

abstract class _CreateUser implements CreateUser {
  const factory _CreateUser({@required String name}) = _$_CreateUser;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$CreateUserCopyWith<_CreateUser> get copyWith;
}

/// @nodoc
class _$UpdateUserTearOff {
  const _$UpdateUserTearOff();

// ignore: unused_element
  _UpdateUser call({@required String name}) {
    return _UpdateUser(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateUser = _$UpdateUserTearOff();

/// @nodoc
mixin _$UpdateUser {
  String get name;

  @JsonKey(ignore: true)
  $UpdateUserCopyWith<UpdateUser> get copyWith;
}

/// @nodoc
abstract class $UpdateUserCopyWith<$Res> {
  factory $UpdateUserCopyWith(
          UpdateUser value, $Res Function(UpdateUser) then) =
      _$UpdateUserCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$UpdateUserCopyWithImpl<$Res> implements $UpdateUserCopyWith<$Res> {
  _$UpdateUserCopyWithImpl(this._value, this._then);

  final UpdateUser _value;
  // ignore: unused_field
  final $Res Function(UpdateUser) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateUserCopyWith<$Res> implements $UpdateUserCopyWith<$Res> {
  factory _$UpdateUserCopyWith(
          _UpdateUser value, $Res Function(_UpdateUser) then) =
      __$UpdateUserCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$UpdateUserCopyWithImpl<$Res> extends _$UpdateUserCopyWithImpl<$Res>
    implements _$UpdateUserCopyWith<$Res> {
  __$UpdateUserCopyWithImpl(
      _UpdateUser _value, $Res Function(_UpdateUser) _then)
      : super(_value, (v) => _then(v as _UpdateUser));

  @override
  _UpdateUser get _value => super._value as _UpdateUser;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_UpdateUser(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_UpdateUser implements _UpdateUser {
  const _$_UpdateUser({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'UpdateUser(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserCopyWith<_UpdateUser> get copyWith =>
      __$UpdateUserCopyWithImpl<_UpdateUser>(this, _$identity);
}

abstract class _UpdateUser implements UpdateUser {
  const factory _UpdateUser({@required String name}) = _$_UpdateUser;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$UpdateUserCopyWith<_UpdateUser> get copyWith;
}
