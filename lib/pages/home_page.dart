import 'package:flutter/material.dart';
import 'package:namer_app/styles/appcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: Text(
            "this is home page",
          ),
          // centerTitle: true,
          elevation: 0,
          actions: [Icon(Icons.location_city_outlined)],
        ),
        body: Column(
          children: [
          Row(
            children:[
           Image.asset('assets/temp/kavya.jpg', width: 50, height: 50),
           SizedBox(
            width: 16,
           ),
           Text("Kavya Sunil ",style: TextStyle(color: AppColors.white),
           )
          ],),
          ],

        ));
  }
}
