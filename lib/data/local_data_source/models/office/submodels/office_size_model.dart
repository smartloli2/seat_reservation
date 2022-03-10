import 'package:hive_flutter/adapters.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/domain/models/office/entities/office_size.dart';

part 'office_size_model.g.dart';

@HiveType(typeId: HiveTypeIds.officeSize)
class OfficeSizeModel {
  @HiveField(0)
  final int width;
  @HiveField(1)
  final int height;

  const OfficeSizeModel({
    required this.width,
    required this.height,
  });

  factory OfficeSizeModel.fromDomain(OfficeSize officeSize) =>
      OfficeSizeModel(width: officeSize.width, height: officeSize.height);

  OfficeSize get toDomain => OfficeSize(
        width: width,
        height: height,
      );
}
