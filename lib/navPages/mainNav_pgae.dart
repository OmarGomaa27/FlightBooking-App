import 'package:flightbooking_12thproject/navPages/homePage.dart';
import 'package:flightbooking_12thproject/navPages/profile.dart';
import 'package:flightbooking_12thproject/screens/signUp.dart';
import 'package:flutter/material.dart';

import 'bookingFlight.dart';

class MainNavPage extends StatefulWidget {
  const MainNavPage({Key? key}) : super(key: key);

  @override
  State<MainNavPage> createState() => _MainNavPageState();
}

class _MainNavPageState extends State<MainNavPage> {
  List pages = [
    HomePage(),
    BookingFlight(),
    Profile(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: BottomNavigationBar(

            onTap: onTap,
            currentIndex: currentIndex,
            iconSize: 40,
            elevation: 0,
            backgroundColor: Color(0xff5560AB),
            selectedItemColor: Colors.black45,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Book",
                icon: Icon(Icons.luggage_rounded),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_outline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
