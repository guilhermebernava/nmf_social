import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle toggleButton(Color color) {
    return GoogleFonts.outfit(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }
}
