import 'package:flutter/painting.dart';
import 'package:seat_reservation/core/constants/custom_colors.dart';

enum BookingStatus { free, occupied }

extension BookingStatusX on BookingStatus {
  Color get color {
    switch (this) {
      case BookingStatus.free:
        return CustomColors.blue;
      case BookingStatus.occupied:
        return CustomColors.occupied;
    }
  }
}
