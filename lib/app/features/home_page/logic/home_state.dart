part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  @With<StateForBuilder>()
  const factory HomeState.loading() = _Loading;

  @With<StateForBuilder>()
  const factory HomeState.loaded({
    required List<Office> offices,
  }) = _Loaded;
}
