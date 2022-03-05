import 'package:flutter/material.dart';
import 'package:seat_reservation/app/features/main/screen/main_screen.dart';
import 'package:seat_reservation/core/exceptions/router_exceptions.dart';
import 'package:seat_reservation/core/log/i_log.dart';

class AppRouter {
  static const String initialRoute = '/';

  const AppRouter._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    log.debug('Navigate to ${settings.name} (App router)');

    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case initialRoute:
            return const MainScreen();

          default:
            log.error("Route ${settings.name} not found!");
            throw RouteException("Route ${settings.name} not found!");
        }
      },
    );
  }

  static T _tryCastArgs<T>(Object? arguments) {
    if (arguments is T) {
      return arguments;
    } else {
      log.error('Invalid type of navigation arguments: $T');
      throw InvalidNavArgumentsException(
        'Invalid type of navigation arguments: $T',
      );
    }
  }
}
