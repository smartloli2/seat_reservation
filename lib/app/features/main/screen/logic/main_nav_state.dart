part of 'main_nav_cubit.dart';

@freezed
class MainNavState with _$MainNavState {
  @With<StateForBuilder>()
  const factory MainNavState.newIndex({
    required int index,
  }) = _NewIndex;
}
