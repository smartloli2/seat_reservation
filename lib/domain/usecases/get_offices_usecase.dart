import 'package:seat_reservation/domain/models/office.dart';

class GetOfficesUsecase {
  List<Office> call() => [
        const Office(number: 303, name: "Кузнецкий Мост", wordplaces: []),
      ];
}
