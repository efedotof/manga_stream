// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estantesbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstanteBoxAdapter extends TypeAdapter<EstanteBox> {
  @override
  final int typeId = 6;

  @override
  EstanteBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EstanteBox(
      name: fields[0] as String,
      categorias: (fields[1] as List).cast<String>(),
      titlos: fields[2] as int,
      gengers: (fields[3] as List).cast<String>(),
      path: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EstanteBox obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.categorias)
      ..writeByte(2)
      ..write(obj.titlos)
      ..writeByte(3)
      ..write(obj.gengers)
      ..writeByte(4)
      ..write(obj.path);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EstanteBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
