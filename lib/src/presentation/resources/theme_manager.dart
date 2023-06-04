import 'package:e_commercy/src/presentation/resources/style_manager.dart';
import 'package:e_commercy/src/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData get theme {
  return ThemeData(
    primaryColor: ColorManager.char,
    fontFamily: FontManager.poppins,
    cardTheme: const CardTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        elevation: 8),
    appBarTheme: AppBarTheme(
      titleTextStyle: StyleManager.getMediumFontStyle(
          fontFamily: FontManager.poppins,
          color: Colors.black,
          fontWeight: FontWeightEnum.medium.getWeight),
      centerTitle: true,
      color: Colors.white,
      elevation: ApplicationSize.s0,
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      buttonColor: ColorManager.char,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(ApplicationSize.s8),
            ),
          ),
          backgroundColor: ColorManager.char,
          elevation: ApplicationSize.s8,
          foregroundColor: Colors.black,
          splashFactory: InkSplash.splashFactory),
    ),
    //?Text theme
    textTheme: TextTheme(
        displayLarge: StyleManager.getMediumFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s57),
        displayMedium: StyleManager.getMediumFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s45),
        displaySmall: StyleManager.getMediumFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s36),
        headlineLarge: StyleManager.getMediumFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s32),
        headlineMedium: StyleManager.getMediumFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s28),
        headlineSmall: StyleManager.getMediumFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s24),
        titleLarge: StyleManager.getBoldFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s22),
        titleMedium: StyleManager.getBoldFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s16),
        titleSmall: StyleManager.getBoldFontStyle(
            fontWeight: FontWeightEnum.medium.getWeight,
            fontSize: ApplicationSize.s14)),
  );
}
