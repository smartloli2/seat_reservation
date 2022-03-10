import 'package:flutter/material.dart';
import 'package:seat_reservation/core/constants/custom_colors.dart';

class TextStyles {
  TextStyles._();

  static const appBarTitle = TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Colors.white,
  );

  static const cardText = TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: CustomColors.dark,
  );

  static const officeCardTitle = TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: CustomColors.dark,
  );

  static const alertButtonText = TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: CustomColors.blue,
  );

  static const cardDate = TextStyle(
    fontFamily: 'GTWalsheimPro',
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: CustomColors.mediumGray,
  );
}
