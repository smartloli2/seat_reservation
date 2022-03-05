import 'package:flutter/material.dart';
import 'package:seat_reservation/app/routers/app_router.dart';
import 'package:sizer/sizer.dart';

class App extends StatefulWidget {
  const App();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRouter.initialRoute,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
