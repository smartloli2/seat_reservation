import 'package:hive/hive.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/office_size_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/workplace_model.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/models/office/office.dart';

part 'office_model.g.dart';

@HiveType(typeId: HiveTypeIds.office)
class OfficeModel {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final List<WorkplaceModel> workplaces;
  @HiveField(3)
  final OfficeSizeModel size;

  const OfficeModel({
    required this.id,
    required this.name,
    required this.workplaces,
    required this.size,
  });

  factory OfficeModel.fromDomain(Office office) => OfficeModel(
        id: office.id,
        name: office.name,
        workplaces:
            office.workplaces.map((e) => WorkplaceModel.fromDomain(e)).toList(),
        size: OfficeSizeModel.fromDomain(office.size),
      );

  Office get toDomain => Office(
        id: id,
        name: name,
        workplaces: workplaces.map((e) => e.toDomain).toList(),
        size: size.toDomain,
      );
}
