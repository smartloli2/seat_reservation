import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seat_reservation/app/features/home_page/widgets/office_details/logic/office_details_cubit.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_nav_cubit.dart';
import 'package:seat_reservation/app/features/main/screen/logic/main_page_names.dart';
import 'package:seat_reservation/core/base_state.dart';
import 'package:seat_reservation/core/constants/custom_colors.dart';
import 'package:seat_reservation/core/constants/resources.dart';
import 'package:seat_reservation/core/constants/text_styles.dart';
import 'package:seat_reservation/core/log/i_log.dart';
import 'package:seat_reservation/core/widgets/diagonal_scroll_view/diagonal_scroll_view.dart';
import 'package:seat_reservation/core/widgets/loading_widget.dart';
import 'package:seat_reservation/core/widgets/null_widget.dart';
import 'package:seat_reservation/core/widgets/workplace_widget.dart';
import 'package:seat_reservation/domain/models/office/office.dart';
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
  void listener(BuildContext context, OfficeDetailsState state) =>
      state.maybeMap(
        orElse: () {},
        toHistory: (_) =>
            context.read<MainNavCubit>().routeTo(MainPages.history.index),
      );

  @override
  Widget builder(BuildContext context, OfficeDetailsState state) {
    return state.maybeMap(
      orElse: () => const LoadingWidget(),
      loaded: (state) => Padding(
        padding: const EdgeInsets.all(0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            DiagonalScrollView(
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
            Positioned(
              bottom: 20,
              child: SizedBox(
                width: 90.w,
                child: MaterialButton(
                  onPressed: () {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: const Text(
                            "Бронирование успешно!",
                            style: TextStyles.officeCardTitle,
                          ),
                          actions: [
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.maybePop(context);
                                cubit.bookAgain();
                              },
                              child: const Text(
                                "Забронировать ещё",
                                style: TextStyles.alertButtonText,
                              ),
                            ),
                            CupertinoDialogAction(
                              onPressed: () {
                                Navigator.maybePop(context);
                                cubit.toHistory();
                              },
                              child: const Text(
                                "Завершить",
                                style: TextStyles.alertButtonText,
                              ),
                            ),
                            const NullWidget(),
                          ],
                        );
                      },
                    );
                  },
                  color: cubit.buttonEnabled
                      ? CustomColors.dark
                      : CustomColors.dark.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      cubit.buttonText,
                      style: TextStyles.appBarTitle,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
