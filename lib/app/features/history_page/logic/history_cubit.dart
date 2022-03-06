import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/state_mixins.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final String _pageTitle = "История бронирований";
  String get pageTitle => _pageTitle;

  HistoryCubit() : super(const HistoryState.loading());
}
