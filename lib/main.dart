// ignore_for_file: prefer_const_constructors

import 'package:app04/core/store.dart';
import 'package:app04/pages/cart_page.dart';
import 'package:app04/pages/home_detail.dart';
import 'package:app04/pages/home_page.dart';
import 'package:app04/pages/login_page.dart';
import 'package:app04/utils/routes.dart';
import 'package:app04/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darktheme,
      debugShowCheckedModeBanner: false,
     // home: HomePage(),
      initialRoute: "/",
      routes: {
        "/" : (context)=> LoginPage(),
        MyRoutes.homeRoute : (context) =>HomePage(),
        MyRoutes.loginRoute : (context) =>LoginPage(),
        MyRoutes.cartRoute : (context) =>CartPage(),
        //MyRoutes.homeDetailsRoute : (context) =>HomeDetails(),
      },
    );
  }
}
