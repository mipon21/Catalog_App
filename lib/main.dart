// ignore_for_file: prefer_const_constructors

import 'package:app04/pages/home_page.dart';
import 'package:app04/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: true,
     // home: HomePage(),
      initialRoute: "/login",
      routes: {
        "/" : (context)=> LoginPage(),
        "/home" : (context) =>HomePage(),
        "/login" : (context) =>LoginPage(),
      },
    );
  }
}
