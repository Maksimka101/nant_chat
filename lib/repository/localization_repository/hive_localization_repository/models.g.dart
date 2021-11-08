// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocaleAdapter extends TypeAdapter<Locale> {
  @override
  final int typeId = 4;

  @override
  Locale read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Locale(
      languageCode: fields[0] as String,
      countryCode: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Locale obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.languageCode)
      ..writeByte(1)
      ..write(obj.countryCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocaleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
