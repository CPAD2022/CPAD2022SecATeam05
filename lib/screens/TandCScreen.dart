import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/color_utils.dart';

class TandCScreen extends StatefulWidget {
  const TandCScreen({super.key});

  @override
  State<TandCScreen> createState() => _TandCScreenState();
}

class _TandCScreenState extends State<TandCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "T&C",
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
        10, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(
          children: <Widget>[
            signInOption()
          ],
          ),
      ) ),)
      );
  }
  Row signInOption() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text("Terms And Conditions", 
          style: TextStyle(color: Colors.white70))

      ],);
  }
}