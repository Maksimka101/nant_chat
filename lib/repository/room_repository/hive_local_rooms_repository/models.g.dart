// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveRoomAdapter extends TypeAdapter<_$_HiveRoom> {
  @override
  final int typeId = 2;

  @override
  _$_HiveRoom read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveRoom(
      name: fields[0] as String,
      messagesCount: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveRoom obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.messagesCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveRoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
