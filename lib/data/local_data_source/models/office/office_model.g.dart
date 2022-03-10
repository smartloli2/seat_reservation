// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'office_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OfficeModelAdapter extends TypeAdapter<OfficeModel> {
  @override
  final int typeId = 1;

  @override
  OfficeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfficeModel(
      id: fields[0] as int,
      name: fields[1] as String,
      workplaces: (fields[2] as List).cast<WorkplaceModel>(),
      size: fields[3] as OfficeSizeModel,
    );
  }

  @override
  void write(BinaryWriter writer, OfficeModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.workplaces)
      ..writeByte(3)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfficeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
