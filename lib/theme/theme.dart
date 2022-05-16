import 'package:flutter/material.dart';
import 'package:responsiveness/utils/extensions.dart';

const totalWidthLimit = 1200;

class ThemeSize {
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context)
        .map((mq) => mq.size.width * mq.devicePixelRatio < totalWidthLimit);
  }
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.lightBlue[800],
);
