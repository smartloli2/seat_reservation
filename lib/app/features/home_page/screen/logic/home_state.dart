part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  @With<StateForBuilder>()
  const factory HomeState.loading() = _Loading;

  @With<StateForBuilder>()
  const factory HomeState.listLoaded({
    required List<Office> offices,
  }) = _ListLoaded;

  @With<StateForBuilder>()
  const factory HomeState.detailsLoaded({
    required Office office,
  }) = _DetailsLoaded;
}
