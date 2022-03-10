import 'package:hive/hive.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/booking_status_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/coordinates_model.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/models/office/entities/booking_status.dart';
import 'package:seat_reservation/domain/models/office/entities/workplace.dart';

part 'workplace_model.g.dart';

@HiveType(typeId: HiveTypeIds.workplace)
class WorkplaceModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final BookingStatusModel bookingStatus;
  @HiveField(2)
  final CoordinatesModel coordinates;

  const WorkplaceModel({
    required this.id,
    required this.bookingStatus,
    required this.coordinates,
  });

  factory WorkplaceModel.fromDomain(Workplace workplace) => WorkplaceModel(
        id: workplace.id,
        bookingStatus: BookingStatusModelX.fromDomain(workplace.bookingStatus),
        coordinates: CoordinatesModel.fromDomain(workplace.coordinates),
      );

  Workplace get toDomain => Workplace(
        id: id,
        bookingStatus: bookingStatus.toDomain,
        coordinates: coordinates.toDomain,
      );
}
