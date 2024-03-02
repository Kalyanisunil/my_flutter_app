import 'package:flutter/material.dart';
import 'package:namer_app/config/app_route.dart';
import 'package:namer_app/config/app_strings.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/styles/appcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppStrings.Hellowelcome,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      fontFamily: ' EBGaramond'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " Login to Continue",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: ' EBGaramond'),
                ),
                Spacer(),
                // SizedBox(
                //   height: 20,
                // ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    label: Text("Username"),
                    hintStyle: TextStyle(color: AppColors.black),
                    fillColor: Color.fromARGB(114, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    label: Text("Password"),
                    hintStyle: TextStyle(color: AppColors.black),
                    fillColor: Color.fromARGB(114, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print("clicked");
                    },
                    child: Text(
                      "forgot password",
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            // push replacement is used so that there is no back navigating to login page
                            return HomePage();
                          },
                        ),
                      );
                      Navigator.of(context).pushNamed(AppRoute.main);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Login",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  " Or sign in with",
                  style: TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("with google");
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/image/google.png',
                            width: 22, height: 22),
                        Text(" Login in with Google",
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("with Facebook");
                    },
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(80, 10, 80, 10),
                        backgroundColor: Color.fromARGB(255, 72, 100, 240),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15)))),
                    child: Row(
                      children: [
                        Image.asset('assets/image/fb.png',
                            width: 22, height: 22),
                        Text(
                          " Login in with Facebook",
                          style: TextStyle(
                              color: Color.fromARGB(255, 243, 243, 243)),
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Clicked");
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
