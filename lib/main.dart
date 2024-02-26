import 'package:flutter/material.dart';
import 'package:namer_app/config/app_route.dart';
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
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
