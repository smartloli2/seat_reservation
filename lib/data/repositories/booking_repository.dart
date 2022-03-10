import 'package:seat_reservation/data/local_data_source/models/booking_model.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/contracts/i_booking_repository.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';

class BookingRepository implements IBookingRepository {
  final IStorage<BookingModel> _bookingStorage;

  const BookingRepository(this._bookingStorage);

  @override
  Future<List<Booking>> getAllBookings() => _getAllBookingsStream.toList();

  @override
  Future<void> saveBooking(Booking booking) => _bookingStorage.put(
      booking.id.toString(), BookingModel.fromDomain(booking));

  Stream<Booking> get _getAllBookingsStream async* {
    final allKeys = await _bookingStorage.getKeys();
    for (final key in allKeys) {
      final bookingItem = await _bookingStorage.get(key);
      if (bookingItem != null) {
        yield bookingItem.toDomain();
      }
    }
  }
}
