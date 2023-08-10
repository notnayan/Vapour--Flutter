import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme() => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static ThemeData darkTheme() => ThemeData(brightness: Brightness.dark);

  final myH1 = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      decoration: TextDecoration.none);

  final myH1w = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      decoration: TextDecoration.none);

  final myH2 = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black);

  final mid = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      decoration: TextDecoration.none);

  final s = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w200,
      color: Colors.white);

  final rating = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w900,
      color: Colors.green,
      decoration: TextDecoration.none);

  final developer = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w900,
      color: Colors.grey.shade400,
      decoration: TextDecoration.none);

  final description = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
      decoration: TextDecoration.none);

  final price = TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.red.shade700,
      decoration: TextDecoration.none);
}
