// ignore_for_file: prefer_const_constructors

import 'package:app04/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.fitHeight,
            ),
            SizedBox(height: 20,),
            Text('WelCome', style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter User Name",
                      label: Text("User Name"),
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      label: Text("Password"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
              child: Text("Continue"),
              style: TextButton.styleFrom(
                minimumSize: Size(150, 40)
              ),
            )
          ],
        ),
      ),
    );
  }
}
