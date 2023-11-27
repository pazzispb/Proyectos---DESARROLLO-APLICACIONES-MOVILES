import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodTheme{
  // Tema claro
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    displayLarge: GoogleFonts.openSans(
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    displayMedium: GoogleFonts.openSans(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    displaySmall: GoogleFonts.openSans(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black
    ),
    titleLarge: GoogleFonts.openSans(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black
    )
  );

  // Tema oscuro
  static TextTheme darkTextTheme = TextTheme(
      bodyLarge: GoogleFonts.openSans(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          color: Colors.white
      ),
      displayLarge: GoogleFonts.openSans(
          fontSize: 32.0,
          fontWeight: FontWeight.w700,
          color: Colors.white
      ),
      displayMedium: GoogleFonts.openSans(
          fontSize: 21.0,
          fontWeight: FontWeight.w700,
          color: Colors.white
      ),
      displaySmall: GoogleFonts.openSans(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.white
      ),
      titleLarge: GoogleFonts.openSans(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          color: Colors.white
      )
  );

  static ThemeData light(){
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.blue)
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green
      ),
      textTheme: lightTextTheme
    );
  }

  static ThemeData dark(){
    return ThemeData(
        brightness: Brightness.dark,
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateColor.resolveWith((states) => Colors.blue)
        ),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[900],
            foregroundColor: Colors.white
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.green
        ),
        textTheme: lightTextTheme
    );
  }
}