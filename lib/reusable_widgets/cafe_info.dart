import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lunch_on/models/cafe.dart';

class CafeInfo extends StatelessWidget {
final Cafe = cafe.cafeName();
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
                Text(Cafe.name,
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,),),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      child:  Text(Cafe.desc),
                    )
                  ],
                )

              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(Cafe.logourl,width: 80),
            )
          ],)
      ],),

    );
  }
}