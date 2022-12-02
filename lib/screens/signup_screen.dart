import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lunch_on/reusable_widgets/reusable_widget.dart';
import 'package:lunch_on/screens/signin_screen.dart';

import '../utils/color_utils.dart';
import 'TandCScreen.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
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
        20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(
          children: <Widget>[
            logoWidget("assets/images/logo.png"),
            const SizedBox(
              height: 30,
            ),
            reusableTextField("Enter Username", Icons.person, false, _userNameTextController),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Email Id", Icons.person, false, _emailTextController),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Password", Icons.lock, true, _passwordTextController),
            const SizedBox(
              height: 20,
            ),
            signInSignUpButton(context, false, () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: _emailTextController.text, 
                password: _passwordTextController.text)
                .then((value) {
                  print("Created New Account");
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen()));
              
            }).onError((error ,stackTrace) {
              print("Error ${error.toString()}");
            });
            }),
            TandC(),
            const SizedBox(
              height: 20,
            ),
            signInOption()
          ],
          ),
      ) ),)
      );
  }
  Row TandC() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("By signing up, I agree with the", 
          style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => TandCScreen()));
        },
        child: const Text(
          "  T&C & Privacy Policy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )

      ],);
  }
  Row signInOption() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Already have an account?", 
          style: TextStyle(color: Colors.white70)),
      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
        },
        child: const Text(
          "   Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )

      ],);
  }
}