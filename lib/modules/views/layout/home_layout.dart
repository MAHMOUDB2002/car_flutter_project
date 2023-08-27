import 'package:car_project/modules/controllers/layout_controller.dart';
import 'package:car_project/modules/views/Authentication/login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../utils/components/color.dart';

class HomeLayout extends GetView<LayoutController> {
  const HomeLayout({Key? key}) : super(key: key);

  // PageController pageController = PageController();

  // int selectedIndex = 0;

  // List<Widget> screens = [
  //   HomeScreen(),
  //   BuyCarScreen(),
  //   CommunityScreen(),
  //   ProfileScreen(),
  // ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LayoutController>(
      init: LayoutController(),
      builder: (controller) {
        return Scaffold(
            backgroundColor: Color(hexColor('#F1F2F3')),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColor.White,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.grey,
                elevation: 50.0,
                onTap: (index) {
                  controller.changeBottomNavBar(index);
                },
                currentIndex: controller.selectedIndex,
                items: controller.bottomItems,
              ),
            ),
            body: controller.screens[controller.selectedIndex]);
      },
    );
  }
}
