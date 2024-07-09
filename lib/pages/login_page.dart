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
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.fitHeight,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'WelCome $name',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter User Name",
                        label: Text("User Name"),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username Cannot be Empty";
                        } else {
                          return null;
                        }
                      },
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Cannot be Empty";
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.deepPurpleAccent,
              borderRadius: changeButton
                  ? BorderRadius.circular(60)
                  : BorderRadius.circular(10),
              child: InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 60 : 150,
                  height: changeButton ? 60 : 40,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Log In",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
