// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/core/base_state.dart';
import 'package:seat_reservation/core/constants/resources.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget();

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState
    extends BaseState<BottomNavigationBarWidget, MainNavCubit, MainNavState> {
  _BottomNavigationBarWidgetState() : super.empty();

  @override
  void didChangeDependencies() {
    cubit = context.read<MainNavCubit>();
    super.didChangeDependencies();
  }

  @override
  Widget builder(BuildContext context, MainNavState state) {
    final tabWidth = 100.w / cubit.tabNumber;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: cubit.index * tabWidth),
            Container(color: Colors.black, width: tabWidth, height: 2),
          ],
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 16,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Resources.home),
              activeIcon: SvgPicture.asset(Resources.home_active),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Resources.history),
              activeIcon: SvgPicture.asset(Resources.history_active),
              label: '',
            ),
          ],
          currentIndex: cubit.index,
          onTap: cubit.routeTo,
        ),
      ],
    );
  }
}
