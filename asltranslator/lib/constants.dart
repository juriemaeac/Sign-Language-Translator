import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color extraBlue = Color(0xFF20273A);
  static const Color blue = Color(0xFF1A4555); //Color(0xFF20273A);
  static const Color lightblue = Color(0xFF232B41);
  static const Color lightlightblue = Color(0xFF28314C);
  static const Color lightlightlightblue = Color(0xFF2E3858);
  static const Color lightlightlightlightblue = Color(0xFF323D60);

  static const Color cyan = Color(0xFF1A4555);
  static const Color lightcyan = Color(0xFF295C6F);
  static const Color lightlightcyan = Color(0xFF2C6A81);
  static const Color lightlightlightcyan = Color(0xFF3F7C91);
  static const Color lightlightlightlightcyan = Color(0xFF558496);

  static const Color orange = Color(0xFFF87952);
  static const Color lightorange = Color(0xFFF5B472);
  static const Color darkorange = Color(0xFFDE9C5A);
  static const Color beige = Color(0xFFF5E0CB);

  static const Color brown = Color(0xFF422F1A);
}

class AppTextStyles {
  static TextStyle headings = GoogleFonts.comfortaa(
    textStyle: const TextStyle(
      color: AppColors.orange,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
    ),
  );
  static TextStyle title = GoogleFonts.comfortaa(
    textStyle: const TextStyle(
      color: AppColors.blue,
      fontWeight: FontWeight.w800,
      letterSpacing: -1,
    ),
  );
  static TextStyle subtitle = GoogleFonts.comfortaa(
    textStyle: const TextStyle(
      color: AppColors.lightorange,
      letterSpacing: -1,
    ),
  );
  static TextStyle body = GoogleFonts.comfortaa(
    textStyle: const TextStyle(
      color: AppColors.beige,
      letterSpacing: -1,
    ),
  );
}
