import 'package:flutter/material.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/pages/login_page.dart';
import 'package:namer_app/pages/main_page.dart';
import 'package:namer_app/styles/appcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white, fontFamily: 'EBGaramond'),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => Main_page(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
