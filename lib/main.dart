import 'package:flutter/material.dart';
import 'package:namer_app/config/app_route.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 15, 23, 40),
          fontFamily: 'EBGaramond'),
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
