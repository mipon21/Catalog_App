// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:app04/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

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
            Text('WelCome $name',
              style: TextStyle(
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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

            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton?60: 150,
                height:changeButton?60: 40,
                alignment: Alignment.center,
                child: changeButton?Icon(
                    Icons.done,
                    color: Colors.white,
                )
                : Text("Log In", style:
                TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  // shape: changeButton? BoxShape.circle : BoxShape.rectangle,
                   borderRadius:changeButton?BorderRadius.circular(60) : BorderRadius.circular(10),
                ),
              ),
            )],
        ),
      ),
    );
  }
}
