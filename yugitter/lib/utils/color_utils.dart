import 'package:flutter/material.dart';

class FlutterColor extends Color {
  static int getColorFromHex(String flutterColor) {
    flutterColor = flutterColor.toUpperCase().replaceAll("#", "");
    if (flutterColor.length == 6) {
      flutterColor = "FF" + flutterColor;
    }
    return int.parse(flutterColor, radix: 16);
  }

  FlutterColor(final String flutterColor)
      : super(getColorFromHex(flutterColor));
}
