import 'package:seat_reservation/domain/models/workplace.dart';

class Office {
  final int number;
  final String name;
  final List<Workplace> wordplaces;

  const Office({
    required this.number,
    required this.name,
    required this.wordplaces,
  });

  @override
  String toString() =>
      'Office(number: $number, name: $name, wordplaces: $wordplaces)';
}
