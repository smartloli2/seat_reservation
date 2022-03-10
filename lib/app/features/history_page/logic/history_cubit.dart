import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/extensions/dartz_ext.dart';
import 'package:seat_reservation/core/state_mixins.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';
import 'package:seat_reservation/domain/usecases/get_bookings_usecase.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final GetBookingsUsecase _getBookingsUsecase;

  final String _pageTitle = "История бронирований";
  String get pageTitle => _pageTitle;

  HistoryCubit(
    this._getBookingsUsecase,
  ) : super(const HistoryState.loading()) {
    _init();
  }

  Future _init() => _getBookingsUsecase().then((failOrBookings) {
        if (failOrBookings.isRight()) {
          return emit(HistoryState.loaded(
            bookings: failOrBookings.asRight,
          ));
        }
      });
}
