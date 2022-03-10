// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_status_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingStatusModelAdapter extends TypeAdapter<BookingStatusModel> {
  @override
  final int typeId = 3;

  @override
  BookingStatusModel read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return BookingStatusModel.free;
      case 1:
        return BookingStatusModel.occupied;
      default:
        return BookingStatusModel.free;
    }
  }

  @override
  void write(BinaryWriter writer, BookingStatusModel obj) {
    switch (obj) {
      case BookingStatusModel.free:
        writer.writeByte(0);
        break;
      case BookingStatusModel.occupied:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingStatusModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
