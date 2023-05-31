import 'dart:ui';

import 'package:e_commercy/presentation/font_manager.dart';
import 'package:e_commercy/presentation/values_manager.dart';

class StyleManager {
  TextStyle _getTextStyle(
          {required String fontFamily,
          required Color color,
          required FontWeight fontWeight,
          double fontSize = FontSize.s14}) =>
      TextStyle(
          color: color,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize);

//Regular font style
  TextStyle getMediumFontStyle(
      {required String fontFamily,
      required Color color,
      required FontWeight fontWeight,
      double fontSize = ApplicationSize.s14}) {
    return _getTextStyle(
        fontFamily: FontManager.poppins,
        color: color,
        fontWeight: FontWeightEnum.medium.getWeight,
        fontSize: fontSize);
  }

  //Bold font style
  TextStyle getBoldFontStyle(
      {required String fontFamily,
      required Color color,
      required FontWeight fontWeight,
      double fontSize = ApplicationSize.s14}) {
    return _getTextStyle(
        fontFamily: FontManager.poppins,
        color: color,
        fontWeight: FontWeightEnum.bold.getWeight,
        fontSize: fontSize);
  }

  //Thin font style
  TextStyle getThinFontStyle(
      {required String fontFamily,
      required Color color,
      required FontWeight fontWeight,
      double fontSize = ApplicationSize.s14}) {
    return _getTextStyle(
        fontFamily: FontManager.poppins,
        color: color,
        fontWeight: FontWeightEnum.thin.getWeight,
        fontSize: fontSize);
  }
}
