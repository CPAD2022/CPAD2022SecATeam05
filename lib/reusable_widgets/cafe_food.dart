import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lunch_on/models/food.dart';
import 'package:lunch_on/screens/food_detail.dart';

import '../screens/signup_screen.dart';

class cafeFoodDetails extends StatelessWidget {
  
final food = Food.cafeFood();
  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
              child: Image.asset(food.imageUrl,width: 80),
                  
                ),
                
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),

                      child:  Text(food.desc),
                    )
                  ],
                )

              ],
            ),
            GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => foodDetails()));
        },)
            
          ],)
      ],),
    );
  }
}

