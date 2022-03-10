import 'package:hive/hive.dart';
import 'package:seat_reservation/data/local_data_source/storage/src/hive_constants.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';

part 'booking_model.g.dart';

@HiveType(typeId: HiveTypeIds.booking)
class BookingModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String officeId;
  @HiveField(2)
  final String workplaceId;
  @HiveField(3)
  final int officeName;
  @HiveField(4)
  final DateTime createdAt;

  const BookingModel({
    required this.id,
    required this.officeId,
    required this.workplaceId,
    required this.officeName,
    required this.createdAt,
  });

  Booking toDomain() => Booking(
        id: id,
        officeId: officeId,
        workplaceId: workplaceId,
        officeName: officeName,
        createdAt: createdAt,
      );

  factory BookingModel.fromDomain(Booking booking) => BookingModel(
        id: booking.id,
        officeId: booking.officeId,
        workplaceId: booking.workplaceId,
        officeName: booking.officeName,
        createdAt: booking.createdAt,
      );
}
