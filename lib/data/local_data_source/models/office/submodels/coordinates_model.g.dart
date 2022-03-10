// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CoordinatesModelAdapter extends TypeAdapter<CoordinatesModel> {
  @override
  final int typeId = 4;

  @override
  CoordinatesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CoordinatesModel(
      x: fields[0] as int,
      y: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CoordinatesModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.x)
      ..writeByte(1)
      ..write(obj.y);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoordinatesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
