import 'package:flutter/material.dart';

class ColorManager {
  static Color char = HexColor._toHexColor('#FFC107');
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color primary = HexColor._toHexColor('#216869');
}

//Extension for color toHex Color
extension HexColor on Color {
  static Color _toHexColor(String color) {
    String hexChar = 'FF';

    color = color.replaceAll('#', '');
    if (color.length == 6) {
      color = hexChar + color;
    }
    return Color(int.tryParse(color, radix: 16) ?? 0);
  }
}
