import 'package:seat_reservation/domain/models/size.dart';
import 'package:seat_reservation/domain/models/workplace.dart';

class Office {
  final int number;
  final String name;
  final List<Workplace> workplaces;
  final OfficeSize size;

  const Office({
    required this.number,
    required this.name,
    required this.workplaces,
    required this.size,
  });

  @override
  String toString() {
    return 'Office(number: $number, name: $name, wordplaces: $workplaces, size: $size)';
  }
}
