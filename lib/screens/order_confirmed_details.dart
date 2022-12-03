import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lunch_on/screens/home_screen.dart';

import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';

class OrderConfirmed extends StatefulWidget {
  const OrderConfirmed({super.key});

  @override
  State<OrderConfirmed> createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {
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
            Container(
                      padding: EdgeInsets.all(15),

                      child:  Text('Order Confirmed',
                      style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,)),
                      
                      ),
                       Row(
                  children: [
                        okButton(context, true, () {
              
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen()));
              })
                  ]
                  
                  
                )
            
          ],
        ),
      ),
    ),
  ),
      
    );
  }
}