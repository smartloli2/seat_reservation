import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> init() async {
  _registerStorages();

  _registerRepositories();

  _registerUseCases();

  _registerBlocs();
}

void _registerStorages() {}

void _registerRepositories() {}

void _registerUseCases() {}

void _registerBlocs() {}
