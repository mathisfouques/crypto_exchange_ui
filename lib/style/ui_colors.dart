import 'package:flutter/material.dart';

abstract class UiColors {
  //Colors
  static const Color purple = Color(0xFF7878FA);
  static const Color darkPurple = Color(0xFF6262D9);
  static const Color pink = Color(0xFF9D62D9);
  static const Color darkGreyBackground = Color(0xFF232336);
  static const Color blackBackground = Color(0xFF16171A);

  // Typo colors
  static const Color typoSnowWhite = Color(0xFFF2F2FA);
  static const Color typoLightGrey = Color(0xFFE4E4F0);
  static const Color typoDustyGrey = Color(0xFFD5D5E0);
  static const Color typoStormGrey = Color(0xFFA7A7CC);

  // Gradients
  static const Gradient purplePinkGrad = LinearGradient(
    colors: [
      Color(0xFF9D62D9),
      Color(0xFF6262D9),
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );
  static const Gradient purplePinkGradInversed = LinearGradient(
    colors: [
      Color(0xFF9D62D9),
      Color(0xFF6262D9),
    ],
    end: Alignment.topRight,
    begin: Alignment.bottomLeft,
  );
  // static const Gradient purpleGrad = LinearGradient(
  //   colors: [
  //     Color(0xFF4358BF),
  //     Color(0xFF7087FA),
  //   ],
  //   begin: Alignment.bottomCenter,
  //   end: Alignment.topCenter,
  // );
  // static const Gradient curveLightBlueGrad = LinearGradient(
  //   colors: [
  //     Color(0xFF70C1FA),
  //     Color(0xFF3083BF),
  //   ],
  //   begin: Alignment.bottomLeft,
  //   end: Alignment.topRight,
  // );
  // static const Gradient curveDarkPurpleGrad = LinearGradient(
  //   colors: [
  //     Color(0xBB7474F2),
  //     Color(0x0A7474F2),
  //   ],
  //   begin: Alignment.topCenter,
  //   end: Alignment.bottomCenter,
  // );
  // static const Gradient darkGreyGrad = RadialGradient(
  //   colors: [
  //     Color(0xCC232336),
  //     Color(0x0A232336),
  //   ],
  // );
}
