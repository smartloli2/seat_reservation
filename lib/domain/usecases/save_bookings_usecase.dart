import 'package:dartz/dartz.dart';
import 'package:seat_reservation/domain/contracts/i_booking_repository.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';

class SaveBookingUsecase {
  final IBookingRepository _bookingRepository;

  SaveBookingUsecase({
    required IBookingRepository bookingRepository,
  }) : _bookingRepository = bookingRepository;

  Future<Either<String, Unit>> call(Booking booking) => _bookingRepository
      .saveBooking(booking)
      .then((_) => right<String, Unit>(unit))
      .onError((e, s) => left("Failed to save booking"));
}
