// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buscasrecentesbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BuscasRecentesAdapter extends TypeAdapter<BuscasRecentes> {
  @override
  final int typeId = 7;

  @override
  BuscasRecentes read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BuscasRecentes(
      title: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BuscasRecentes obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuscasRecentesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
