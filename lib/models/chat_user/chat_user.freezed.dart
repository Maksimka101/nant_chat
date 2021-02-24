// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'chat_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatUserTearOff {
  const _$ChatUserTearOff();

// ignore: unused_element
  _ChatUser call({@required @HiveField(0) String name}) {
    return _ChatUser(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatUser = _$ChatUserTearOff();

/// @nodoc
mixin _$ChatUser {
  @HiveField(0)
  String get name;

  @JsonKey(ignore: true)
  $ChatUserCopyWith<ChatUser> get copyWith;
}

/// @nodoc
abstract class $ChatUserCopyWith<$Res> {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) then) =
      _$ChatUserCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String name});
}

/// @nodoc
class _$ChatUserCopyWithImpl<$Res> implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._value, this._then);

  final ChatUser _value;
  // ignore: unused_field
  final $Res Function(ChatUser) _then;

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
abstract class _$ChatUserCopyWith<$Res> implements $ChatUserCopyWith<$Res> {
  factory _$ChatUserCopyWith(_ChatUser value, $Res Function(_ChatUser) then) =
      __$ChatUserCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String name});
}

/// @nodoc
class __$ChatUserCopyWithImpl<$Res> extends _$ChatUserCopyWithImpl<$Res>
    implements _$ChatUserCopyWith<$Res> {
  __$ChatUserCopyWithImpl(_ChatUser _value, $Res Function(_ChatUser) _then)
      : super(_value, (v) => _then(v as _ChatUser));

  @override
  _ChatUser get _value => super._value as _ChatUser;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_ChatUser(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_ChatUser implements _ChatUser {
  const _$_ChatUser({@required @HiveField(0) this.name}) : assert(name != null);

  @override
  @HiveField(0)
  final String name;

  @override
  String toString() {
    return 'ChatUser(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);
}

abstract class _ChatUser implements ChatUser {
  const factory _ChatUser({@required @HiveField(0) String name}) = _$_ChatUser;

  @override
  @HiveField(0)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ChatUserCopyWith<_ChatUser> get copyWith;
}
