import 'package:dartz/dartz.dart';
import 'package:seat_reservation/domain/contracts/I_office_repository.dart';
import 'package:seat_reservation/domain/models/office/office.dart';

class GetOfficesUsecase {
  final IOfficeRepository _officeRepository;

  const GetOfficesUsecase({
    required IOfficeRepository officeRepository,
  }) : _officeRepository = officeRepository;

  Future<Either<String, List<Office>>> call() => _officeRepository
      .getAllOffices()
      .then((offices) => right<String, List<Office>>(offices))
      .onError((e, s) => left("Failed to get offices"));
}
