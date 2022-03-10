import 'package:seat_reservation/domain/models/office/entities/office_size.dart';
import 'package:seat_reservation/domain/models/office/entities/workplace.dart';

class Office {
  final int id;
  final String name;
  final List<Workplace> workplaces;
  final OfficeSize size;

  const Office({
    required this.id,
    required this.name,
    required this.workplaces,
    required this.size,
  });

  @override
  String toString() {
    return 'Office(number: $id, name: $name, wordplaces: $workplaces, size: $size)';
  }

  Office copyWith({
    int? id,
    String? name,
    List<Workplace>? workplaces,
    OfficeSize? size,
  }) {
    return Office(
      id: id ?? this.id,
      name: name ?? this.name,
      workplaces: workplaces ?? this.workplaces,
      size: size ?? this.size,
    );
  }
}
