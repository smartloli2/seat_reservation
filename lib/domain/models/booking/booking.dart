import 'package:seat_reservation/domain/models/office/office.dart';

class Booking {
  final int id;
  final String officeId;
  final String workplaceId;
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
