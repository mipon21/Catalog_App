import 'package:flutter/material.dart';
import 'package:app04/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String string = 'App';
    return  Scaffold(
      appBar: AppBar(
        title: Text('My App',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.blueAccent,
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
