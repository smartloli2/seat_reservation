import 'package:hive/hive.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/models/office/entities/coordinates.dart';

part 'coordinates_model.g.dart';

@HiveType(typeId: HiveTypeIds.coordinates)
class CoordinatesModel {
  @HiveField(0)
  final int x;
  @HiveField(1)
  final int y;

  const CoordinatesModel({
    required this.x,
    required this.y,
  });

  factory CoordinatesModel.fromDomain(Coordinates coordinates) =>
      CoordinatesModel(x: coordinates.x, y: coordinates.y);

  Coordinates get toDomain => Coordinates(x: x, y: y);
}
