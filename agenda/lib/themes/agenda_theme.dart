import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgendaTheme {
  static TextTheme lightTextTheme = TextTheme(
    titleLarge: GoogleFonts.lato( // Titulo
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyLarge: GoogleFonts.openSans( // Texto debajo del titulo
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: const Color.fromARGB(255, 155, 154, 155),
    ),
    bodyMedium: GoogleFonts.lato( // Accent
      fontSize: 14,
      fontWeight: FontWeight.w200,
      color: const Color.fromARGB(255, 240, 109, 63),
    ),
    bodySmall: GoogleFonts.openSans( //Texto debajo del accent
      fontSize: 14,
      fontWeight: FontWeight.w100,
      color: const Color.fromARGB(255, 179, 179, 179),
    )
  );

  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        textTheme: lightTextTheme);
  }
}
