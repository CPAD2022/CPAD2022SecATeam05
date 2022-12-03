import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lunch_on/models/cafe.dart';
import 'package:lunch_on/reusable_widgets/cafe_info.dart';
import 'package:lunch_on/utils/color_utils.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import '../reusable_widgets/cafe_food.dart';
import '../reusable_widgets/custom_app_bar.dart';
import '../models/storage_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selected = 0;
  // ignore: non_constant_identifier_names
  // final PageController = PageController();
  final Cafe = cafe.cafeName();
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
    return  Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CustomAppBar(Icons.arrow_back, Icons.search),
          CafeInfo(),
          cafeFoodDetails(),
          // FutureBuilder(
          //   future: storage.listFiles(),
          //   builder: (BuildContext context,
          //   AsyncSnapshot<firebase_storage.ListResult> snapshot) {
          //       if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
          //         return Container(
          //           padding: const EdgeInsets.symmetric(horizontal: 20),
          //           height: 50,
          //           child: ListView.builder(
          //             scrollDirection: Axis.horizontal,
          //             shrinkWrap: true,
          //             itemCount: snapshot.data!.items.length,
          //             itemBuilder: (BuildContext context, int index){
          //               return ElevatedButton(onPressed: () {}, child: Text(snapshot.data!.items[index].name),);
          //             }),
          //         );
          //       }
          //       if (snapshot.connectionState == ConnectionState.waiting ||
          //       !snapshot.hasData ){
          //         return CircularProgressIndicator();
          //       }
          //       return Container();
          //   }
          // ),
          // FutureBuilder(
          //   future: storage.downloadURL(),
          //   builder: (BuildContext context,
          //   AsyncSnapshot<String> snapshot) {
          //       if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
          //         return Container(
          //           width: 300,
          //           height: 250,
          //           padding: const EdgeInsets.symmetric(horizontal: 20),
          //           child: Image.network(snapshot.data!, fit: BoxFit.cover,)
          //           );
          //       }
          //       if (snapshot.connectionState == ConnectionState.waiting ||
          //       !snapshot.hasData ){
          //         return CircularProgressIndicator();
          //       }
          //       return Container();
          //   }
          // )
        ],
      ),
    );
  }
}