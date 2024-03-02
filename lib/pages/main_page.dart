// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/pages/profile_page.dart';

import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

// ignore: camel_case_types
class _Main_pageState extends State<Main_page> {
  // int currentIndex = 0;
  menus currentIndex = menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex.index],
      bottomNavigationBar: MyBottomNavigation(
        currentIndex: currentIndex.index,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text("favorites"),
    ),
    Center(
      child: Text("add post"),
    ),
    Center(
      child: Text("messages"),
    ),
    ProfilePage(),
  ];
}

// ignore: camel_case_types
enum menus { home, favorite, add, messages, user }

class MyBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<menus> onTap;
  const MyBottomNavigation({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Row(
                children: [
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(menus.home),
                          icon: SvgPicture.asset("assets/svg/home.svg"))),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(menus.favorite),
                          icon: SvgPicture.asset("assets/svg/favorite.svg"))),
                  Spacer(),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(menus.messages),
                          icon: SvgPicture.asset("assets/svg/messages.svg"))),
                  Expanded(
                      child: IconButton(
                          onPressed: () => onTap(menus.user),
                          icon: SvgPicture.asset("assets/svg/user.svg"))),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(menus.add),
              child: Container(
                height: 64,
                width: 64,
                padding: EdgeInsets.all(12),
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
                child: SvgPicture.asset("assets/svg/add.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
