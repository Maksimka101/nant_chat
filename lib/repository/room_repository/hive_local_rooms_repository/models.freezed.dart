// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HiveRoomTearOff {
  const _$HiveRoomTearOff();

  _HiveRoom call(
      {@HiveField(0) required String name,
      @HiveField(1) required int messagesCount}) {
    return _HiveRoom(
      name: name,
      messagesCount: messagesCount,
    );
  }
}

/// @nodoc
const $HiveRoom = _$HiveRoomTearOff();

/// @nodoc
mixin _$HiveRoom {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int get messagesCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HiveRoomCopyWith<HiveRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveRoomCopyWith<$Res> {
  factory $HiveRoomCopyWith(HiveRoom value, $Res Function(HiveRoom) then) =
      _$HiveRoomCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String name, @HiveField(1) int messagesCount});
}

/// @nodoc
class _$HiveRoomCopyWithImpl<$Res> implements $HiveRoomCopyWith<$Res> {
  _$HiveRoomCopyWithImpl(this._value, this._then);

  final HiveRoom _value;
  // ignore: unused_field
  final $Res Function(HiveRoom) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? messagesCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      messagesCount: messagesCount == freezed
          ? _value.messagesCount
          : messagesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HiveRoomCopyWith<$Res> implements $HiveRoomCopyWith<$Res> {
  factory _$HiveRoomCopyWith(_HiveRoom value, $Res Function(_HiveRoom) then) =
      __$HiveRoomCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String name, @HiveField(1) int messagesCount});
}

/// @nodoc
class __$HiveRoomCopyWithImpl<$Res> extends _$HiveRoomCopyWithImpl<$Res>
    implements _$HiveRoomCopyWith<$Res> {
  __$HiveRoomCopyWithImpl(_HiveRoom _value, $Res Function(_HiveRoom) _then)
      : super(_value, (v) => _then(v as _HiveRoom));

  @override
  _HiveRoom get _value => super._value as _HiveRoom;

  @override
  $Res call({
    Object? name = freezed,
    Object? messagesCount = freezed,
  }) {
    return _then(_HiveRoom(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      messagesCount: messagesCount == freezed
          ? _value.messagesCount
          : messagesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 2)
class _$_HiveRoom implements _HiveRoom {
  const _$_HiveRoom(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.messagesCount});

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int messagesCount;

  @override
  String toString() {
    return 'HiveRoom(name: $name, messagesCount: $messagesCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HiveRoom &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.messagesCount, messagesCount) ||
                other.messagesCount == messagesCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, messagesCount);

  @JsonKey(ignore: true)
  @override
  _$HiveRoomCopyWith<_HiveRoom> get copyWith =>
      __$HiveRoomCopyWithImpl<_HiveRoom>(this, _$identity);
}

abstract class _HiveRoom implements HiveRoom {
  const factory _HiveRoom(
      {@HiveField(0) required String name,
      @HiveField(1) required int messagesCount}) = _$_HiveRoom;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  int get messagesCount;
  @override
  @JsonKey(ignore: true)
  _$HiveRoomCopyWith<_HiveRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
