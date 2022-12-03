
import 'package:flutter/material.dart';
import 'package:lunch_on/models/items.dart';

import '../reusable_widgets/custom_app_bar.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'order_confirmed_details.dart';

class foodDetails extends StatefulWidget {
  const foodDetails({super.key});

  @override
  State<foodDetails> createState() => _foodDetailsState();
}

class _foodDetailsState extends State<foodDetails> {
  final items = Items.foodItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Column(
              
              children: [
                CustomAppBar(Icons.person, Icons.search),

                // Container(
                // padding: EdgeInsets.all(10),),
                
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  
                  child: Image.asset(items.imageUrl,width: 100)
                  // child: Align(
                  //   alignment: Alignment.topCenter,
                  //   heightFactor: 150,
                  //   child: Image.asset(items.imageUrl,width: 100),
                  ),
                  // borderRadius: BorderRadius.circular(50),
                  // palignment: Alignment.topCenter,
                  // heightFactor: 0.5,
                  // child: Image.asset(items.imageUrl,width: 100)
                
                
                
                  Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),

                      child:  Text(items.item1),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),

                      child:  Text(items.item2),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),

                      child:  Text(items.item3),
                    ),
                  ],
                ),
                Row(
                  children: [
                        checkoutButton(context, true, () {
              
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrderConfirmed()));
              })
                  ]
                  
                  
                )

              ],
            ),
            
            
          ],)
      ],),
    );
  }
}