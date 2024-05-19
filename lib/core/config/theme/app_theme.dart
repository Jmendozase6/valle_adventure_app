import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valle_adventure_app/core/config/constants/app_constants.dart';
import 'package:valle_adventure_app/core/config/theme/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        // Font
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),

        // Colors
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.mainColor,
          brightness: Brightness.light,
          primary: AppColors.mainColor,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
              ),
            ),
          ),
        ),
      );
}
