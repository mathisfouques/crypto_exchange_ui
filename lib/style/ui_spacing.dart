import 'package:flutter/material.dart';

abstract class UiSpacing {
  static const double verySmall = 8;
  static const double small = verySmall * 2;
  static const double medium = verySmall * 3;
  static const double large = verySmall * 4;
  static const double veryLarge = verySmall * 5;

  static const BorderRadiusGeometry borderRadiusRegular =
      BorderRadius.all(Radius.circular(12));
  static const BorderRadiusGeometry borderRadiusLarge =
      BorderRadius.all(Radius.circular(32));
}

abstract class UiRotation {
  static const double smallRotation = 0.15;
}

abstract class UiSize {
  static double totalHeight(context) => MediaQuery.of(context).size.height;
  static double toalWidth(context) => MediaQuery.of(context).size.width;
}
