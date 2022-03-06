import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/state_mixins.dart';
import 'package:seat_reservation/domain/models/office.dart';
import 'package:seat_reservation/domain/models/size.dart';
import 'package:seat_reservation/domain/models/workplace.dart';

part 'office_details_state.dart';
part 'office_details_cubit.freezed.dart';

const seatWidth = 65.0;
const seatHeight = 106.0;

class OfficeDetailsCubit extends Cubit<OfficeDetailsState> {
  final seatsOuterPaddings = 16.0;
  final seatsInnerPaddings = 16.0;

  OfficeDetailsCubit() : super(const OfficeDetailsState.loading());

  late final String _pageTitle;
  String get pageTitle => _pageTitle;

  void init(Office office) {
    _pageTitle = "#${office.number} ${office.name}";

    return emit(OfficeDetailsState.loaded(
      officeSize: office.size,
      officeWidth: office.size.width * (seatWidth + seatsOuterPaddings) +
          seatsOuterPaddings * 2,
      officeHeight: office.size.height * (seatHeight + seatsInnerPaddings) +
          seatsOuterPaddings * 4,
      workplaces: _arrangePlaces(office.workplaces, office.size),
    ));
  }

  List<Workplace?> _arrangePlaces(List<Workplace> workplaces, OfficeSize size) {
    final orderedPlaces =
        List<Workplace?>.filled(size.width * size.height, null);
    for (int i = 0; i < workplaces.length; i++) {
      final workplace = workplaces[i];
      orderedPlaces[workplace.coordinates.y * size.width +
          workplace.coordinates.x] = workplace;
    }
    return orderedPlaces;
  }
}
