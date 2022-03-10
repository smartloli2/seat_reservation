import 'package:seat_reservation/domain/models/office/office.dart';

class Booking {
  final int id;
  final int officeId;
  final int workplaceId;
  final String officeName;
  final DateTime createdAt;

  const Booking({
    required this.id,
    required this.officeId,
    required this.workplaceId,
    required this.officeName,
    required this.createdAt,
  });
}
