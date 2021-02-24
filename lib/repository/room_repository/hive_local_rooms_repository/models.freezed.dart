// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HiveRoomTearOff {
  const _$HiveRoomTearOff();

// ignore: unused_element
  _HiveRoom call(
      {@required @HiveField(0) String name,
      @required @HiveField(1) int messagesCount}) {
    return _HiveRoom(
      name: name,
      messagesCount: messagesCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveRoom = _$HiveRoomTearOff();

/// @nodoc
mixin _$HiveRoom {
  @HiveField(0)
  String get name;
  @HiveField(1)
  int get messagesCount;

  @JsonKey(ignore: true)
  $HiveRoomCopyWith<HiveRoom> get copyWith;
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
    Object name = freezed,
    Object messagesCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      messagesCount: messagesCount == freezed
          ? _value.messagesCount
          : messagesCount as int,
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
    Object name = freezed,
    Object messagesCount = freezed,
  }) {
    return _then(_HiveRoom(
      name: name == freezed ? _value.name : name as String,
      messagesCount: messagesCount == freezed
          ? _value.messagesCount
          : messagesCount as int,
    ));
  }
}

@HiveType(typeId: 2)

/// @nodoc
class _$_HiveRoom implements _HiveRoom {
  const _$_HiveRoom(
      {@required @HiveField(0) this.name,
      @required @HiveField(1) this.messagesCount})
      : assert(name != null),
        assert(messagesCount != null);

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
        (other is _HiveRoom &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.messagesCount, messagesCount) ||
                const DeepCollectionEquality()
                    .equals(other.messagesCount, messagesCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(messagesCount);

  @JsonKey(ignore: true)
  @override
  _$HiveRoomCopyWith<_HiveRoom> get copyWith =>
      __$HiveRoomCopyWithImpl<_HiveRoom>(this, _$identity);
}

abstract class _HiveRoom implements HiveRoom {
  const factory _HiveRoom(
      {@required @HiveField(0) String name,
      @required @HiveField(1) int messagesCount}) = _$_HiveRoom;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  int get messagesCount;
  @override
  @JsonKey(ignore: true)
  _$HiveRoomCopyWith<_HiveRoom> get copyWith;
}
