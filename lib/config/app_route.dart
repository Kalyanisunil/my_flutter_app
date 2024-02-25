import 'package:namer_app/pages/ediit_profile.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/pages/login_page.dart';
import 'package:namer_app/pages/main_page.dart';

class AppRoute {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => Main_page(),
    '/editprofile': (context) => EditProfile()
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editprofile = '/editprofile';
}
