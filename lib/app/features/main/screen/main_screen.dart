import 'package:flutter/material.dart';
import 'package:seat_reservation/app/features/history_page/history_page.dart';
import 'package:seat_reservation/app/features/home_page/screen/home_page.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/app/features/main/widgets/bottom_navigation_widget.dart';
import 'package:seat_reservation/core/base_state.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = '/main';

  const MainScreen();

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState
    extends BaseState<MainScreen, MainNavCubit, MainNavState> {
  _MainScreenState() : super.when();

  @override
  Widget builder(BuildContext context, MainNavState state) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: cubit.pageController,
          children: const [
            HomePage(),
            HistoryPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(navCubit: cubit),
    );
  }
}
