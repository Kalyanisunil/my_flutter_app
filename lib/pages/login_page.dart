import 'package:flutter/material.dart';
import 'package:namer_app/pages/home_page.dart';
import 'package:namer_app/styles/appcolor.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/makeup.jpg'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    " Welcome Back!",
                    style: TextStyle(
                        color: Color.fromARGB(220, 250, 250, 250),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: ' EBGaramond'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    " Login to Continue",
                    style: TextStyle(
                        color: Color.fromARGB(220, 250, 250, 250),
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
                      hintStyle: TextStyle(color: AppColors.white),
                      fillColor: Color.fromARGB(76, 255, 255, 255),
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
                      hintStyle: TextStyle(color: AppColors.white),
                      fillColor: Color.fromARGB(76, 255, 255, 255),
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
                          color: Color.fromARGB(220, 250, 250, 250),
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
                            MaterialPageRoute(builder: (context) {
                          // push replacement is used so that there is no back navigating to login page
                          return HomePage();
                        }));
                        Navigator.of(context).pushNamed('/main');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: AppColors.primary,
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
                    style: TextStyle(color: AppColors.white),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        print("with google");
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                        primary: Color.fromARGB(255, 238, 238, 238),
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
                  SizedBox(height: 20),
                  SizedBox(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        print("with Facebook");
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                          primary: Color.fromARGB(255, 72, 100, 240),
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
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Clicked");
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
