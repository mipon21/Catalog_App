// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryColor: Colors.blueAccent,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.1,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
      )
  );

  static ThemeData get darktheme => ThemeData(
      brightness: Brightness.dark
  );
  //colors

  static Color creamColor = Color(0xfff5f5f5);
}