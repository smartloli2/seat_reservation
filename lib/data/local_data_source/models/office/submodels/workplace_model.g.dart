// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workplace_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WorkplaceModelAdapter extends TypeAdapter<WorkplaceModel> {
  @override
  final int typeId = 2;

  @override
  WorkplaceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkplaceModel(
      id: fields[0] as int,
      bookingStatus: fields[1] as BookingStatusModel,
      coordinates: fields[2] as CoordinatesModel,
    );
  }

  @override
  void write(BinaryWriter writer, WorkplaceModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.bookingStatus)
      ..writeByte(2)
      ..write(obj.coordinates);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkplaceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
