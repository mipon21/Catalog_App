// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  accountName: Text("Mipon Rahman"),
                  accountEmail: Text("mipon5500u@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img.png"),
                  ),
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.blueAccent,),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.person, color: Colors.blueAccent,),
              title: Text("Account"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.blueAccent,),
              title: Text("Email"),
            )
          ],
        ),
      ),
    );
  }
}
