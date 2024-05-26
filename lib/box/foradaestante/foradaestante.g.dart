// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foradaestante.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForaDaEstanteBoxAdapter extends TypeAdapter<ForaDaEstanteBox> {
  @override
  final int typeId = 8;

  @override
  ForaDaEstanteBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ForaDaEstanteBox(
      name: fields[0] as String,
      dir: fields[7] as String,
      type: fields[1] as String,
      sobre: fields[4] as String,
      images: fields[6] as String,
      capitulos: fields[5] as int,
      capt: fields[2] as int,
      gengers: (fields[3] as List).cast<MangaGenre>(),
    );
  }

  @override
  void write(BinaryWriter writer, ForaDaEstanteBox obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.type)
      ..writeByte(2)
      ..write(obj.capt)
      ..writeByte(3)
      ..write(obj.gengers)
      ..writeByte(4)
      ..write(obj.sobre)
      ..writeByte(5)
      ..write(obj.capitulos)
      ..writeByte(6)
      ..write(obj.images)
      ..writeByte(7)
      ..write(obj.dir);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForaDaEstanteBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
