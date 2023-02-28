import 'package:flutter/widgets.dart';

abstract class UiTextStyle {
  static const TextStyle heading = TextStyle(
    fontFamily: "ClashGrotesk",
    fontSize: 34,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: "NunitoSans",
    fontSize: 22,
  );
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: "NunitoSans",
    fontSize: 17,
  );
  static const TextStyle bodySmall = TextStyle(
    fontFamily: "NunitoSans",
    fontSize: 15,
  );
  static const TextStyle bodyVerySmall = TextStyle(
    fontFamily: "NunitoSans",
    fontSize: 12,
  );
}

abstract class UiText {
  static Text textHeading(String text, Color color, {FontWeight? weight}) =>
      Text(
        text,
        style: TextStyle(
            fontFamily: "ClashGrotesk",
            fontSize: 34,
            color: color,
            fontWeight: weight ?? FontWeight.bold),
      );
  static Text textBodyLarge(String text, Color color, {FontWeight? weight}) =>
      Text(
        text,
        style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 22,
            color: color,
            fontWeight: weight ?? FontWeight.w600),
      );
  static Text textBodyMedium(String text, Color color, {FontWeight? weight}) =>
      Text(
        text,
        style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 18,
            color: color,
            fontWeight: weight ?? FontWeight.normal),
      );
  static Text textBodySmall(String text, Color color, {FontWeight? weight}) =>
      Text(
        text,
        style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 15,
            color: color,
            fontWeight: weight ?? FontWeight.normal),
      );
  static Text textBodyVerySmall(String text, Color color,
          {FontWeight? weight}) =>
      Text(
        text,
        style: TextStyle(
            fontFamily: "NunitoSans",
            fontSize: 12,
            color: color,
            fontWeight: weight ?? FontWeight.normal),
      );
}
