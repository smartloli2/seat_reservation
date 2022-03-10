part of 'office_details_cubit.dart';

@freezed
class OfficeDetailsState with _$OfficeDetailsState {
  @With<StateForBuilder>()
  const factory OfficeDetailsState.loading() = _Loading;

  @With<StateForBuilder>()
  const factory OfficeDetailsState.loaded({
    required double officeWidth,
    required double officeHeight,
    required OfficeSize officeSize,
    required List<Workplace?> workplaces,
    required int? selectedPlaceIndex,
    required bool isButtonLoading,
  }) = _Loaded;

  @With<StateForListener>()
  const factory OfficeDetailsState.toHistory() = _ToHistory;

  @With<StateForListener>()
  const factory OfficeDetailsState.showSuccessAlert() = _ShowSuccessAlert;
}
