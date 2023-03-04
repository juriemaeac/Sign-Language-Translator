import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color blue = Color(0xFF20273A);
  static const Color darkcyan = Color(0xFF1A4555);
  static const Color cyan = Color(0xFF336D83);
  static const Color orange = Color(0xFFF87952);
  static const Color lightorange = Color(0xFFF5B472);
}

class AppTextStyles {
  static TextStyle headings = GoogleFonts.comfortaa(
    textStyle: TextStyle(
      color: AppColors.orange,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
    ),
  );
}
