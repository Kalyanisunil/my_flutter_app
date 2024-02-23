import 'package:flutter/material.dart';
import 'package:namer_app/components/postitem.dart';
import 'package:namer_app/styles/appcolor.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
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
      // body: SingleChildScrollView(
      // //   physics: AlwaysScrollableScrollPhysics(),
      // //   child: Column(
      // //     children: mockUsersFromServer(),
      //   ),
      body: ListView.builder(itemBuilder: (context, index) {
        return PostItem(
          user: users[index],
        );
      }),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 200; i++) {
      users.add("user number $i");
    }
  }
}
