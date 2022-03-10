import 'package:seat_reservation/data/local_data_source/models/office/office_model.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/contracts/I_office_repository.dart';
import 'package:seat_reservation/domain/models/office/entities/booking_status.dart';
import 'package:seat_reservation/domain/models/office/entities/coordinates.dart';
import 'package:seat_reservation/domain/models/office/entities/office_size.dart';
import 'package:seat_reservation/domain/models/office/entities/workplace.dart';
import 'package:seat_reservation/domain/models/office/office.dart';

class OfficeRepository implements IOfficeRepository {
  final IStorage<OfficeModel> _officeStorage;

  OfficeRepository(this._officeStorage);

  @override
  Future<List<Office>> getAllOffices() async {
    final allKeys = await _officeStorage.getKeys();

    if (allKeys.isEmpty) {
      for (final office in _defaultOffices) {
        await saveOffice(office);
      }
      return _defaultOffices;
    }

    return _getAllOfficesStream.toList();
  }

  @override
  Future<void> saveOffice(Office office) => _officeStorage.put(
        office.id.toString(),
        OfficeModel.fromDomain(office),
      );

  Stream<Office> get _getAllOfficesStream async* {
    final allKeys = await _officeStorage.getKeys();
    for (final key in allKeys) {
      final officeModel = await _officeStorage.get(key);
      if (officeModel != null) {
        yield officeModel.toDomain;
      }
    }
  }

  final _defaultOffices = [
    const Office(
      id: 303,
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
