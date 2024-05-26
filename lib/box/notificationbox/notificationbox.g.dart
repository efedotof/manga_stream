// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notificationbox.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotificationBoxAdapter extends TypeAdapter<NotificationBox> {
  @override
  final int typeId = 3;

  @override
  NotificationBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotificationBox(
      title: fields[0] as String,
      discript: fields[1] as String,
      notificationnot: fields[2] as bool,
      hotnot: fields[3] as bool,
      infonot: fields[4] as bool,
      aircraftnot: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationBox obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.discript)
      ..writeByte(2)
      ..write(obj.notificationnot)
      ..writeByte(3)
      ..write(obj.hotnot)
      ..writeByte(4)
      ..write(obj.infonot)
      ..writeByte(5)
      ..write(obj.aircraftnot);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
