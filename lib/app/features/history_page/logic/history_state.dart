part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  @With<StateForBuilder>()
  const factory HistoryState.loading() = _Loading;
}
