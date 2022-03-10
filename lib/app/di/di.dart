import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:seat_reservation/app/features/history_page/logic/history_cubit.dart';
import 'package:seat_reservation/app/features/home_page/screen/logic/home_cubit.dart';
import 'package:seat_reservation/app/features/home_page/widgets/office_details/logic/office_details_cubit.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/core/custom_cubit_observer.dart';
import 'package:seat_reservation/data/local_data_source/models/booking_model.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/data/repositories/booking_repository.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';
import 'package:seat_reservation/domain/usecases/get_offices_usecase.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  Bloc.observer = CustomCubitObserver();

  _registerStorages();

  _registerRepositories();

  _registerUseCases();

  _registerCubits();
}

void _registerStorages() {
  _registerAdapters();

  getIt.registerLazySingleton<IStorage<BookingModel>>(
      () => HiveStorage<BookingModel>(HiveBoxNames.booking));
}

void _registerAdapters() {
  Hive.registerAdapter(BookingModelAdapter());
}

void _registerRepositories() {
  getIt.registerFactory(() => BookingRepository(getIt.get()));
}

void _registerUseCases() {
  getIt.registerFactory(() => GetOfficesUsecase());
}

void _registerCubits() {
  getIt.registerLazySingleton(() => MainNavCubit());
  getIt.registerFactory(() => HomeCubit(getIt.get()));
  getIt.registerFactory(() => HistoryCubit());
  getIt.registerFactory(() => OfficeDetailsCubit());
}
