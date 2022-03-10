import 'package:dartz/dartz.dart';
import 'package:seat_reservation/data/repositories/booking_repository.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';

class GetBookingsUsecase {
  final BookingRepository _bookingRepository;

  GetBookingsUsecase({
    required BookingRepository bookingRepository,
  }) : _bookingRepository = bookingRepository;

  Future<Either<String, List<Booking>>> call() => _bookingRepository
      .getAllBookings()
      .then((bookings) => right<String, List<Booking>>(bookings))
      .onError((e, s) => left("Failed to get bookings"));
}
