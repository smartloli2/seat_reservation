import 'package:seat_reservation/domain/models/office/entities/booking_status.dart';
import 'package:seat_reservation/domain/models/office/entities/coordinates.dart';

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

  Workplace copyWith({
    String? id,
    BookingStatus? bookingStatus,
    Coordinates? coordinates,
  }) {
    return Workplace(
      id: id ?? this.id,
      bookingStatus: bookingStatus ?? this.bookingStatus,
      coordinates: coordinates ?? this.coordinates,
    );
  }
}
