import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(),
      );
}
