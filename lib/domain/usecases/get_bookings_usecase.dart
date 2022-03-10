import 'package:dartz/dartz.dart';
import 'package:seat_reservation/domain/contracts/i_booking_repository.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';

class GetBookingsUsecase {
  final IBookingRepository _bookingRepository;

  GetBookingsUsecase({
    required IBookingRepository bookingRepository,
  }) : _bookingRepository = bookingRepository;

  Future<Either<String, List<Booking>>> call() => _bookingRepository
      .getAllBookings()
      .then((bookings) => right<String, List<Booking>>(bookings))
      .onError((e, s) => left("Failed to get bookings"));
}
