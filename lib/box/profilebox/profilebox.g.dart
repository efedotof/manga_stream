// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profilebox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileBoxAdapter extends TypeAdapter<ProfileBox> {
  @override
  final int typeId = 2;

  @override
  ProfileBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileBox(
      email: fields[0] as String,
      name: fields[1] as String,
      photoProfile: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileBox obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.photoProfile);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
