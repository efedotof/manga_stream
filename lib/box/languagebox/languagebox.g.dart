// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'languagebox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LanguageBoxAdapter extends TypeAdapter<LanguageBox> {
  @override
  final int typeId = 5;

  @override
  LanguageBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LanguageBox(
      language: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LanguageBox obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
