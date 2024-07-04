import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    num temperature = 30.87;
    return  Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text('Hello $days days World $temperature',
          style: TextStyle(fontSize: 40),
          textAlign: TextAlign.center,
        ),
      ),
      drawer: Drawer(

      ),
    );
  }
}
