import 'package:flutter/material.dart';

class ColorManager {
  static Color charixard = HexColor._toHexColor('#FFC107');
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
