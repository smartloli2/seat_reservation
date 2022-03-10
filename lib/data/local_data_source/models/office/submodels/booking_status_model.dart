import 'package:hive/hive.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/models/office/entities/booking_status.dart';

part 'booking_status_model.g.dart';

@HiveType(typeId: HiveTypeIds.bookingStatus)
enum BookingStatusModel {
  @HiveField(0)
  free,
  @HiveField(1)
  occupied,
}

extension BookingStatusModelX on BookingStatusModel {
  BookingStatus get toDomain {
    switch (this) {
      case BookingStatusModel.free:
        return BookingStatus.free;
      case BookingStatusModel.occupied:
        return BookingStatus.occupied;
    }
  }

  static BookingStatusModel fromDomain(BookingStatus bookingStatus) {
    switch (bookingStatus) {
      case BookingStatus.free:
        return BookingStatusModel.free;
      case BookingStatus.occupied:
        return BookingStatusModel.occupied;
    }
  }
}
