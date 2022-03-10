import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/extensions/dartz_ext.dart';
import 'package:seat_reservation/core/state_mixins.dart';
import 'package:seat_reservation/domain/models/office/office.dart';
import 'package:seat_reservation/domain/usecases/get_offices_usecase.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetOfficesUsecase _getOfficesUsecase;

  HomeCubit(
    this._getOfficesUsecase,
  ) : super(const HomeState.loading()) {
    loadList();
  }

  String get pageTitle => state.map(
        loading: (_) => "Загрузка...",
        listLoaded: (_) => "Бронирование места в офисе",
        detailsLoaded: (state) => "#${state.office.id} ${state.office.name}",
      );

  bool get showArrowBack => state.maybeMap(
        orElse: () => false,
        detailsLoaded: (_) => true,
      );

  Future<void> loadList() async {
    final failOrOffices = await _getOfficesUsecase();
    if (failOrOffices.isRight()) {
      return emit(HomeState.listLoaded(offices: failOrOffices.asRight));
    }
  }

  void toDetails(Office office) =>
      emit(HomeState.detailsLoaded(office: office));
}
