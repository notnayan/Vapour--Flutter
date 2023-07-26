import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme() => ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.poppins().fontFamily
      );
  
  static ThemeData darkTheme() => ThemeData(
       brightness: Brightness.dark
      );
}