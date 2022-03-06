import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/state_mixins.dart';
import 'package:seat_reservation/domain/models/office.dart';
import 'package:seat_reservation/domain/usecases/get_offices_usecase.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetOfficesUsecase _getOfficesUsecase;

  HomeCubit(
    this._getOfficesUsecase,
  ) : super(const HomeState.loading()) {
    _load();
  }

  final String _pageTitle = "Бронирование места в офисе";
  String get pageTitle => _pageTitle;

  void _load() => emit(HomeState.loaded(offices: _getOfficesUsecase()));
}
