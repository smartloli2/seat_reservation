import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/state_mixins.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';
import 'package:seat_reservation/domain/models/office/entities/booking_status.dart';
import 'package:seat_reservation/domain/models/office/entities/office_size.dart';
import 'package:seat_reservation/domain/models/office/entities/workplace.dart';
import 'package:seat_reservation/domain/models/office/office.dart';
import 'package:seat_reservation/domain/usecases/save_bookings_usecase.dart';
import 'package:seat_reservation/domain/usecases/save_office_usecase.dart';

part 'office_details_cubit.freezed.dart';
part 'office_details_state.dart';

const seatWidth = 65.0;
const seatHeight = 106.0;

class OfficeDetailsCubit extends Cubit<OfficeDetailsState> {
  final seatsOuterPaddings = 16.0;
  final seatsInnerPaddings = 16.0;

  final SaveBookingUsecase _saveBookingUsecase;
  final SaveOfficeUsecase _saveOfficeUsecase;

  OfficeDetailsCubit(
    this._saveBookingUsecase,
    this._saveOfficeUsecase,
  ) : super(const OfficeDetailsState.loading());

  String get buttonText => state.maybeMap(
        orElse: () => "Загрузка...",
        loaded: (_) =>
            buttonEnabled ? "Подтвердить" : "Укажите место на карте...",
      );

  bool get buttonEnabled => _selectedPlaceIndex != null;

  bool _isButtonLoading = false;

  late Office _office;
  late final double _officeWidth;
  late final double _officeHeight;
  OfficeSize get _officeSize => _office.size;
  late List<Workplace?> _workplaces;

  int? _selectedPlaceIndex;
  Workplace get _selectedWorkplace => _workplaces[_selectedPlaceIndex!]!;

  OfficeDetailsState get _loadedState => OfficeDetailsState.loaded(
        officeWidth: _officeWidth,
        officeHeight: _officeHeight,
        officeSize: _officeSize,
        workplaces: List.from(_workplaces),
        selectedPlaceIndex: _selectedPlaceIndex,
        isButtonLoading: _isButtonLoading,
      );

  void init(Office office) {
    _office = office;
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

  Future<void> confirmSelection() async {
    if (_selectedPlaceIndex == null ||
        _workplaces[_selectedPlaceIndex!] == null) return;

    _isButtonLoading = true;
    emit(_loadedState);

    await _saveBookingUsecase(Booking(
      id: Random().nextInt(9999),
      officeId: _office.id,
      workplaceId: int.parse(_selectedWorkplace.id),
      officeName: _office.name,
      createdAt: DateTime.now(),
    ));

    final updatedOffice = _office.copyWith(
        workplaces: _office.workplaces
            .map((e) => e.id == _selectedWorkplace.id
                ? e.copyWith(bookingStatus: BookingStatus.occupied)
                : e)
            .toList());

    _workplaces[_selectedPlaceIndex!] =
        _selectedWorkplace.copyWith(bookingStatus: BookingStatus.occupied);

    await _saveOfficeUsecase(updatedOffice);

    _office = updatedOffice;
    _isButtonLoading = false;
    emit(const OfficeDetailsState.showSuccessAlert());
  }
}
