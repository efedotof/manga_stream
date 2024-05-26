// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modosbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ModosBoxAdapter extends TypeAdapter<ModosBox> {
  @override
  final int typeId = 4;

  @override
  ModosBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ModosBox(
      isdark: fields[0] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ModosBox obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isdark);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModosBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
