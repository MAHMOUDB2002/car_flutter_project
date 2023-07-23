import 'package:car_project/app/shared/style/AppTheme.dart';
import 'package:car_project/modules/home/views/community_screen.dart';
import 'package:car_project/modules/home/views/home_sceen.dart';
import 'package:car_project/modules/home/views/profile_screen.dart';
import 'package:flutter/material.dart';

import '../buy_car_screen.dart';
import '../login_Screen.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  PageController pageController = PageController();

  int selectedIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    BuyCarScreen(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(hexColor('#F1F2F3')),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppTheme.colors.White,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            elevation: 50.0,
            onTap: (x) {
              // pageController.jumpToPage(x);
              setState(() {
                selectedIndex = x;
              });
            },
            currentIndex: selectedIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.car_repair,
                  ),
                  label: 'Buy car'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.social_distance,
                  ),
                  label: 'Community'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
        body: screens[selectedIndex]
        );
  }
}
