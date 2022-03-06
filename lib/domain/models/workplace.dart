import 'package:seat_reservation/domain/models/booking_status.dart';
import 'package:seat_reservation/domain/models/coordinates.dart';

class Workplace {
  final BookingStatus bookingStatus;
  final Coordinates coordinates;

  const Workplace({
    required this.bookingStatus,
    required this.coordinates,
  });

  @override
  String toString() =>
      'Workplace(bookingStatus: $bookingStatus, coordinates: $coordinates)';
}
