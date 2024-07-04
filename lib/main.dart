// ignore_for_file: prefer_const_constructors

import 'package:app04/pages/home_page.dart';
import 'package:app04/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: true,
     // home: HomePage(),
      initialRoute: "/home",
      routes: {
        "/" : (context)=> LoginPage(),
        "/home" : (context) =>HomePage(),
        "/login" : (context) =>LoginPage(),
      },
    );
  }
}
