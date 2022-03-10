import 'package:dartz/dartz.dart';
import 'package:seat_reservation/domain/contracts/I_office_repository.dart';
import 'package:seat_reservation/domain/models/office/office.dart';

class SaveOfficeUsecase {
  final IOfficeRepository _officeRepository;

  SaveOfficeUsecase({
    required IOfficeRepository officeRepository,
  }) : _officeRepository = officeRepository;

  Future<Either<String, Unit>> call(Office booking) => _officeRepository
      .saveOffice(booking)
      .then((_) => right<String, Unit>(unit))
      .onError((e, s) => left("Failed to save office info"));
}
