import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.fitHeight,
          ),
          SizedBox(height: 20,),
          Text('WelCome', style: TextStyle(
            fontSize: 24,
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
            print("Hi There");
          },
            child: Text("Continue"),
            style: TextButton.styleFrom(),
          )
        ],
      ),
    );
  }
}
