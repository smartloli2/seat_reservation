import 'package:flutter/material.dart';
import 'package:seat_reservation/app/features/home_page/widgets/office_details/logic/office_details_cubit.dart';
import 'package:seat_reservation/core/widgets/null_widget.dart';
import 'package:seat_reservation/domain/models/booking_status.dart';
import 'package:seat_reservation/domain/models/workplace.dart';

class WorkplaceWidget extends StatelessWidget {
  final Workplace? workplace;

  const WorkplaceWidget(this.workplace);

  @override
  Widget build(BuildContext context) {
    final workplace = this.workplace;
    if (workplace == null) return const NullWidget();

    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: seatWidth,
        height: seatHeight,
        padding: const EdgeInsets.all(8),
        color: workplace.bookingStatus.color,
      ),
    );
  }
}
