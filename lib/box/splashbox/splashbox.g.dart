// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splashbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SplashBoxAdapter extends TypeAdapter<SplashBox> {
  @override
  final int typeId = 0;

  @override
  SplashBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SplashBox(
      firstentry: fields[0] as bool,
      theuserisregistered: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, SplashBox obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.firstentry)
      ..writeByte(1)
      ..write(obj.theuserisregistered);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SplashBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
