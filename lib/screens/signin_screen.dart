// ignore: implementation_imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lunch_on/screens/home_screen.dart';
import 'package:lunch_on/screens/signup_screen.dart';
import 'package:lunch_on/utils/color_utils.dart';

import '../reusable_widgets/reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
      hexStringToColor("CB2B93"),
      hexStringToColor("9546C4"),
      hexStringToColor("5E61F4")
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter )),
    child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          20, MediaQuery.of(context).size.height * 0.2, 20,0),
        child: Column(
          children: <Widget>[
            logoWidget("assets/images/logo.png"),
            SizedBox(
              height: 70,
            ),
            reusableTextField("Enter username", Icons.person, false, _emailTextController),
            SizedBox(
              height: 30,
            ),
            reusableTextField("Enter Password", Icons.lock, true, _passwordTextController),
            SizedBox(
              height: 30,
            ),
            signInSignUpButton(context, true, () {
              FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value) {

              Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen()));
              }).onError((error, stackTrace) {
                print("Error ${error.toString()}");
              });
            }),
            signUpOption()
          ],
        ),
      ),
    ),
  ),
  );
  }
  Row signUpOption() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Don't have an account?", 
          style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
        },
        child: const Text(
          "  Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )

      ],);
  }
}