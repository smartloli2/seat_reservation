// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office_size_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OfficeSizeModelAdapter extends TypeAdapter<OfficeSizeModel> {
  @override
  final int typeId = 5;

  @override
  OfficeSizeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfficeSizeModel(
      width: fields[0] as int,
      height: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, OfficeSizeModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.width)
      ..writeByte(1)
      ..write(obj.height);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfficeSizeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
