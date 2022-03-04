import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:seat_reservation/core/custom_cubit_observer.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  Bloc.observer = CustomCubitObserver();

  _registerStorages();

  _registerRepositories();

  _registerUseCases();

  _registerBlocs();
}

void _registerStorages() {}

void _registerRepositories() {}

void _registerUseCases() {}

void _registerBlocs() {}
