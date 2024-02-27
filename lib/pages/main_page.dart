import 'package:flutter/material.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/pages/profile_page.dart';
import 'package:namer_app/styles/appcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

// ignore: camel_case_types
class _Main_pageState extends State<Main_page> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/home.svg'),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/favorite.svg'),
              label: 'favorite',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/add.svg'),
              label: 'add post',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/messages.svg'),
              label: 'messages',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svg/user.svg'),
              label: 'user',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.amber,
        ),
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
