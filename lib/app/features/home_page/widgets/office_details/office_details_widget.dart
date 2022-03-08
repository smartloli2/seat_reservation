import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seat_reservation/app/features/home_page/widgets/office_details/logic/office_details_cubit.dart';
import 'package:seat_reservation/app/features/home_page/widgets/workplace_widget.dart';
import 'package:seat_reservation/core/base_state.dart';

import 'package:seat_reservation/core/constants/resources.dart';
import 'package:seat_reservation/core/log/i_log.dart';
import 'package:seat_reservation/core/widgets/diagonal_scroll_view/diagonal_scroll_view.dart';
import 'package:seat_reservation/core/widgets/loading_widget.dart';
import 'package:seat_reservation/domain/models/booking_status.dart';
import 'package:seat_reservation/domain/models/office.dart';
import 'package:sizer/sizer.dart';

class OfficeDetailsWidget extends StatefulWidget {
  final Office office;
  const OfficeDetailsWidget(this.office);

  @override
  State<OfficeDetailsWidget> createState() => _OfficeDetailsWidgetState();
}

class _OfficeDetailsWidgetState extends BaseState<OfficeDetailsWidget,
    OfficeDetailsCubit, OfficeDetailsState> {
  _OfficeDetailsWidgetState() : super.when();

  @override
  void initState() {
    cubit.init(widget.office);
    super.initState();
  }

  @override
  Widget builder(BuildContext context, OfficeDetailsState state) {
    return state.maybeMap(
      orElse: () => const LoadingWidget(),
      loaded: (state) => Padding(
        padding: const EdgeInsets.all(0),
        child: DiagonalScrollView(
          enableZoom: true,
          onCreated: (contoller) {
            log.debug(
                'Move to [${state.officeWidth / 2}; ${state.officeHeight / 2}]');
            contoller.moveTo(
                location:
                    Offset(state.officeWidth / 2, state.officeHeight / 2));
          },
          child: SizedBox(
            width: max(state.officeWidth, 100.w),
            height: max(state.officeHeight, 75.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  Resources.walls,
                  width: state.officeWidth,
                  height: state.officeHeight,
                ),
                SizedBox(
                  width: state.officeWidth,
                  height: state.officeHeight,
                  child: GridView.count(
                    crossAxisCount: state.officeSize.width,
                    primary: false,
                    padding: EdgeInsets.all(cubit.seatsOuterPaddings),
                    crossAxisSpacing: cubit.seatsInnerPaddings,
                    mainAxisSpacing: cubit.seatsInnerPaddings,
                    childAspectRatio: seatWidth / seatHeight,
                    children: List.generate(
                      state.workplaces.length,
                      (index) => WorkplaceWidget(
                        workplace: state.workplaces[index],
                        selected: state.selectedPlaceIndex == index,
                        onTap: () => cubit.selectWorkplace(index),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     SizedBox(
        //       width: state.officeWidth,
        //       height: state.officeHeight,
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        // GridView.count(
        //   crossAxisCount: state.office.size.width,
        //   primary: false,
        //   padding: EdgeInsets.all(cubit.seatsOuterPaddings),
        //   crossAxisSpacing: cubit.seatsInnerPaddings,
        //   mainAxisSpacing: cubit.seatsInnerPaddings,
        //   children: List.generate(
        //     state.office.wordplaces.length,
        //     (index) => const WorkplaceWidget(),
        //   ),
        // ),
        // SvgPicture.asset(
        //   Resources.walls,
        // ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
