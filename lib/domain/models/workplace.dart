import 'package:seat_reservation/domain/models/booking_status.dart';
import 'package:seat_reservation/domain/models/coordinates.dart';

class Workplace {
  final String id;
  final BookingStatus bookingStatus;
  final Coordinates coordinates;

  const Workplace({
    required this.id,
    required this.bookingStatus,
    required this.coordinates,
  });

  @override
  String toString() =>
      'Workplace(id: $id, bookingStatus: $bookingStatus, coordinates: $coordinates)';
}
