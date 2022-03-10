import 'package:dartz/dartz.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';

abstract class IBookingRepository {
  Future<void> saveBooking(Booking booking);

  Future<List<Booking>> getAllBookings();
}
