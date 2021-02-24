// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatUserAdapter extends TypeAdapter<ChatUser> {
  @override
  final int typeId = 1;

  @override
  ChatUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatUser(
      name: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ChatUser obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
