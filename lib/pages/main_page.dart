import 'package:flutter/material.dart';
import 'package:namer_app/styles/appcolor.dart';

class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    var currentIndex=0;
    return Scaffold(
      appBar: AppBar(title: Text("Welcome user!"),backgroundColor: AppColors.primary,),
      body: Center(child: Text("centered text"),),
      bottomNavigationBar: BottomNavigationBar(items: [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home',)
      , BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite',
      ),
      
      ],
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: AppColors.primary,
      ),
      
      );
  }
}
