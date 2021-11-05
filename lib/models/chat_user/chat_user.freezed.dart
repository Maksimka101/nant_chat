// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatUserTearOff {
  const _$ChatUserTearOff();

  _ChatUser call({@HiveField(0) required String name}) {
    return _ChatUser(
      name: name,
    );
  }
}

/// @nodoc
const $ChatUser = _$ChatUserTearOff();

/// @nodoc
mixin _$ChatUser {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatUserCopyWith<ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
    Object? name = freezed,
  }) {
    return _then(_ChatUser(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatUser implements _ChatUser {
  const _$_ChatUser({@HiveField(0) required this.name});

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
        (other.runtimeType == runtimeType &&
            other is _ChatUser &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      __$ChatUserCopyWithImpl<_ChatUser>(this, _$identity);
}

abstract class _ChatUser implements ChatUser {
  const factory _ChatUser({@HiveField(0) required String name}) = _$_ChatUser;

  @override
  @HiveField(0)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$ChatUserCopyWith<_ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}
