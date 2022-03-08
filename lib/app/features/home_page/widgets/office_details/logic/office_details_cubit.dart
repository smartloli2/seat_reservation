import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/state_mixins.dart';
import 'package:seat_reservation/domain/models/office/entities/booking_status.dart';
import 'package:seat_reservation/domain/models/office/entities/size.dart';
import 'package:seat_reservation/domain/models/office/entities/workplace.dart';
import 'package:seat_reservation/domain/models/office/office.dart';

part 'office_details_cubit.freezed.dart';
part 'office_details_state.dart';

const seatWidth = 65.0;
const seatHeight = 106.0;

class OfficeDetailsCubit extends Cubit<OfficeDetailsState> {
  final seatsOuterPaddings = 16.0;
  final seatsInnerPaddings = 16.0;

  OfficeDetailsCubit() : super(const OfficeDetailsState.loading());

  String get buttonText => state.maybeMap(
        orElse: () => "Загрузка...",
        loaded: (_) =>
            buttonEnabled ? "Подтвердить" : "Укажите место на карте...",
      );

  bool get buttonEnabled => _selectedPlaceIndex != null;

  late final double _officeWidth;
  late final double _officeHeight;
  late final OfficeSize _officeSize;
  late final List<Workplace?> _workplaces;

  int? _selectedPlaceIndex;

  OfficeDetailsState get _loadedState => OfficeDetailsState.loaded(
        officeWidth: _officeWidth,
        officeHeight: _officeHeight,
        officeSize: _officeSize,
        workplaces: List.from(_workplaces),
        selectedPlaceIndex: _selectedPlaceIndex,
      );

  void init(Office office) {
    _officeSize = office.size;
    _officeWidth = office.size.width * (seatWidth + seatsOuterPaddings) +
        seatsOuterPaddings * 2;
    _officeHeight = office.size.height * (seatHeight + seatsInnerPaddings) +
        seatsOuterPaddings * 4;
    _workplaces = _arrangePlaces(office.workplaces, office.size);

    return emit(_loadedState);
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

  void selectWorkplace(int index) {
    final isInside = index < _workplaces.length;
    assert(isInside, "Workplace index is outside the workplaces list");
    if (!isInside) return;

    if (_workplaces[index]!.bookingStatus == BookingStatus.occupied) {
      return;
    }

    _selectedPlaceIndex = index;
    return emit(_loadedState);
  }

  void toHistory() => emit(const OfficeDetailsState.toHistory());

  void bookAgain() {
    _selectedPlaceIndex = null;
    emit(_loadedState);
  }
}
