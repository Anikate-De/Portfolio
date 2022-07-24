import 'package:flutter/material.dart';

class AppColors {
  static const _shadowGreyPrimary = 0xFFFFFFFF;

  static const MaterialColor shadowGrey = MaterialColor(
    _shadowGreyPrimary,
    <int, Color>{
      50: Color(_shadowGreyPrimary),
      100: Color(0xFFF2F2F2),
      200: Color(0xFFE6E6E6),
      300: Color(0xFFCCCCCC),
      400: Color(0xFF808080),
      500: Color(0xFF666666),
      600: Color(0xFF4D4D4D),
      700: Color(0xFF333333)
    },
  );

  static const Color lightTeal = Color(0xFF4EBEAD);
  static const Color redAccent = Color(0xFFC1272D);
  static const Color tangerine = Color(0xFFF7931E);
  static const Color seaBlue = Color(0xFF0071BC);
  static const Color greenAccentLight = Color(0xFF009245);
  static const Color greenAccentDark = Color(0xFF006837);
}
