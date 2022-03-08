import 'package:seat_reservation/domain/models/office/entities/size.dart';
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
    int? number,
    String? name,
    List<Workplace>? workplaces,
    OfficeSize? size,
  }) {
    return Office(
      id: number ?? this.id,
      name: name ?? this.name,
      workplaces: workplaces ?? this.workplaces,
      size: size ?? this.size,
    );
  }
}
