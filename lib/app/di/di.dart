import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:seat_reservation/app/features/history_page/logic/history_cubit.dart';
import 'package:seat_reservation/app/features/home_page/screen/logic/home_cubit.dart';
import 'package:seat_reservation/app/features/home_page/widgets/office_details/logic/office_details_cubit.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/core/custom_cubit_observer.dart';
import 'package:seat_reservation/data/local_data_source/models/booking_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/office_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/booking_status_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/coordinates_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/office_size_model.dart';
import 'package:seat_reservation/data/local_data_source/models/office/submodels/workplace_model.dart';
import 'package:seat_reservation/data/local_data_source/storage/storage.dart';
import 'package:seat_reservation/data/repositories/booking_repository.dart';
import 'package:seat_reservation/data/repositories/office_repository.dart';
import 'package:seat_reservation/domain/contracts/I_office_repository.dart';
import 'package:seat_reservation/domain/contracts/i_booking_repository.dart';
import 'package:seat_reservation/domain/models/booking/booking.dart';
import 'package:seat_reservation/domain/usecases/get_bookings_usecase.dart';
import 'package:seat_reservation/domain/usecases/get_offices_usecase.dart';
import 'package:seat_reservation/domain/usecases/save_bookings_usecase.dart';
import 'package:seat_reservation/domain/usecases/save_office_usecase.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  Bloc.observer = CustomCubitObserver();

  _registerStorages();

  _registerRepositories();

  _registerUseCases();

  _registerCubits();
}

void _registerStorages() {
  _initHive();

  getIt.registerLazySingleton<IStorage<BookingModel>>(
      () => HiveStorage<BookingModel>(HiveBoxNames.booking));

  getIt.registerLazySingleton<IStorage<OfficeModel>>(
      () => HiveStorage(HiveBoxNames.office));
}

void _initHive() => Hive
  ..initFlutter()
  ..registerAdapter(BookingModelAdapter())
  ..registerAdapter(OfficeModelAdapter())
  ..registerAdapter(BookingStatusModelAdapter())
  ..registerAdapter(CoordinatesModelAdapter())
  ..registerAdapter(OfficeSizeModelAdapter())
  ..registerAdapter(WorkplaceModelAdapter());

void _registerRepositories() {
  getIt.registerFactory<IBookingRepository>(
      () => BookingRepository(getIt.get()));

  getIt.registerFactory<IOfficeRepository>(() => OfficeRepository(
        getIt.get(),
      ));
}

void _registerUseCases() {
  getIt.registerFactory(() => GetOfficesUsecase(officeRepository: getIt.get()));
  getIt.registerFactory(() => SaveOfficeUsecase(officeRepository: getIt.get()));

  getIt.registerFactory(
      () => GetBookingsUsecase(bookingRepository: getIt.get()));
  getIt.registerFactory(
      () => SaveBookingUsecase(bookingRepository: getIt.get()));
}

void _registerCubits() {
  getIt.registerLazySingleton(() => MainNavCubit());
  getIt.registerFactory(() => HomeCubit(getIt.get()));
  getIt.registerFactory(() => HistoryCubit(getIt.get()));
  getIt.registerFactory(() => OfficeDetailsCubit(
        getIt.get(),
        getIt.get(),
      ));
}
