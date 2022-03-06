import 'package:seat_reservation/domain/models/booking_status.dart';
import 'package:seat_reservation/domain/models/coordinates.dart';
import 'package:seat_reservation/domain/models/office.dart';
import 'package:seat_reservation/domain/models/size.dart';
import 'package:seat_reservation/domain/models/workplace.dart';

class GetOfficesUsecase {
  List<Office> call() => [
        const Office(
          number: 303,
          name: "Кузнецкий Мост",
          workplaces: [
            Workplace(
              id: "001",
              bookingStatus: BookingStatus.free,
              coordinates: Coordinates(x: 2, y: 0),
            ),
            Workplace(
              id: "002",
              bookingStatus: BookingStatus.free,
              coordinates: Coordinates(x: 0, y: 1),
            ),
            Workplace(
              id: "003",
              bookingStatus: BookingStatus.free,
              coordinates: Coordinates(x: 2, y: 1),
            ),
            Workplace(
              id: "004",
              bookingStatus: BookingStatus.occupied,
              coordinates: Coordinates(x: 0, y: 2),
            ),
            Workplace(
              id: "005",
              bookingStatus: BookingStatus.free,
              coordinates: Coordinates(x: 2, y: 2),
            ),
          ],
          size: OfficeSize(width: 3, height: 3),
        ),
      ];
}
