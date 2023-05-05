import 'package:flutter/material.dart';
import 'package:health_app/bmi_content.dart';
import 'package:health_app/home_content.dart';
import 'package:health_app/profile_content.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> contents = [
    HomeContent(),
    BmiContent(),
    ProfileContent()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: Text("Home"),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(30),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 40,
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex = index;
              });
            },
            selectedItemColor: Colors.yellow,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calculate_rounded,
                  ),
                label: "Calculate BMI",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                label: "Profile",
              ),
            ]
        ),
      ),
      body: contents[currentIndex],
    );
  }
}
