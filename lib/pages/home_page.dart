// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:app04/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String string = 'App';
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: new Center(
            child: new Text(
                "Catalog App", textAlign: TextAlign.center
            )
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.5,
      ),
      body: Center(
        child: Text('My $days days $string Challenge',
          style: TextStyle(fontSize: 40),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
