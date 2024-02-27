import 'package:flutter/material.dart';
import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/components/postitem.dart';
// import 'package:namer_app/styles/appcolor.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: Toolbar(title: 'Feeds'),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24);
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 50; i++) {
      users.add("user number $i");
    }
  }
}
