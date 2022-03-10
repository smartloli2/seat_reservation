import 'package:seat_reservation/domain/models/office/office.dart';

abstract class IOfficeRepository {
  Future<List<Office>> getAllOffices();

  Future<void> saveOffice(Office office);
}
