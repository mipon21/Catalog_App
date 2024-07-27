// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.canvasColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: context.theme.secondaryHeaderColor,
                  ),
                  accountName: Text("Mipon Rahman",style: TextStyle(
                    color: Colors.white
                  ),),
                  accountEmail: Text("mipon5500u@gmail.com",style: TextStyle(
                      color: Colors.white
                  ),),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img.png"),
                  ),
                  otherAccountsPictures: [
                   // onTap((){}),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.dark_mode),
                      iconSize: 30,
                      color: context.theme.primaryColor,
                    )
                  ],
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
