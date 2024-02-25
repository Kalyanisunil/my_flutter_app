import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:namer_app/components/appbar.dart';
import 'package:namer_app/config/app_route.dart';
// import 'package:namer_app/pages/login_page.dart';
import 'package:namer_app/styles/appcolor.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  // String get routeName => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoute.editprofile);
                  break;
                case ProfileMenu.logout:
                  // LoginPage();
                  print("logout");
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Edit"),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text("Log out"),
                  value: ProfileMenu.logout,
                ),
                // PopupMenuItem(child: Text("Exit")),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'assets/temp/userimg.jpg',
              width: 90,
              height: 90,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Alexandra Adams',
            style: TextStyle(color: AppColors.black, fontSize: 20),
          ),
          Text(
            "New York",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('50k', style: TextStyle(fontSize: 20)),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text('200', style: TextStyle(fontSize: 20)),
                  Text('posts'),
                ],
              ),
              Column(
                children: [
                  Text('400', style: TextStyle(fontSize: 20)),
                  Text('following'),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          ),
        ],
      ),
    );
  }
}