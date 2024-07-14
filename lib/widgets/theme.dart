// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme extends ChangeNotifier{

  bool _isDark = false;
  bool get isDark => _isDark;
  changeTheme() {
    _isDark = !isDark;
    notifyListeners();
  }

  static ThemeData get lightTheme => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryColor: Colors.blueAccent,
      secondaryHeaderColor: Colors.blueAccent,
      cardColor: Colors.white,
      canvasColor: creamColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blueAccent
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: lightBlueColor,
      ),
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
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryColor: Colors.white,
      secondaryHeaderColor: lightBlueColor,
      brightness: Brightness.dark,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: lightBlueColor
      ),
      cardColor: Colors.black,
      buttonTheme: ButtonThemeData(
        buttonColor: lightBlueColor,
      ),
      canvasColor: darkCreamColor,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.1,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
      )
  );
  //colors

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBlueColor = Vx.gray800;
}