import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/core/custom_cubit_observer.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  Bloc.observer = CustomCubitObserver();

  _registerStorages();

  _registerRepositories();

  _registerUseCases();

  _registerCubits();
}

void _registerStorages() {}

void _registerRepositories() {}

void _registerUseCases() {}

void _registerCubits() {
  getIt.registerFactory(() => MainNavCubit());
}
