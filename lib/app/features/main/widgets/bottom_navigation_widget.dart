// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/core/constants/resources.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final MainNavCubit navCubit;

  const BottomNavigationBarWidget({
    required this.navCubit,
  });

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    final tabWidth = 100.w / widget.navCubit.tabNumber;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: widget.navCubit.index * tabWidth),
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
          currentIndex: widget.navCubit.index,
          onTap: widget.navCubit.routeTo,
        ),
      ],
    );
  }
}
