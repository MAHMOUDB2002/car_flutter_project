import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/buy_car_screen.dart';
import '../views/community_screen.dart';
import '../views/homes/home_sceen.dart';
import '../views/profile_screen.dart';

class LayoutController extends GetxController {
  @override
  void onInit() {
    // print(screenWidth);
    super.onInit();
  }

  @override
  void onReady() {
    // pageController = PageController(initialPage: indexSlider);
    update();
    super.onReady();
  }

  @override
  void onClose() {
    // pageController.dispose();
    super.onClose();
  }

  // PageController pageController = PageController();

  int selectedIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    BuyCarScreen(),
    CommunityScreen(),
    ProfileScreen(),
  ];

  List<BottomNavigationBarItem> bottomItems = [
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
  ];

  void changeBottomNavBar(int index) {
    selectedIndex = index;

    // pageController.jumpToPage(x);
    // setState(() {
    // });
    update();
  }

  // AllCarModel? allCarModel;

  // getAllCar() async {
  //   await DioHelper.get_data(url: "/cars").then((value) {
  //     if (value?.statusCode == 200) {
  //       allCarModel = AllCarModel.fromJson(value?.data);
  //       update();
  //     }
  //   });
  // }

  // CarDetails? carDetailsl;

  // Future<void> getDataOfCar(id) async {
  //   await DioHelper.get_data(url: "/cars/$id").then((value) {
  //     if (value?.statusCode == 200) {
  //       carDetailsl = CarDetails.fromJson(value!.data);
  //       update();
  //     }
  //     update();
  //   });
  // }

  // ALLBrands? allBrands;

  // Future<void> getALLBrands() async {
  //   await DioHelper.get_data(url: "/brands").then((value) {
  //     allBrands = ALLBrands.fromJson(value?.data);
  //     update();
  //   });
  // }
//  Future<void> getSlider() async {
//   await DioHelper.get_data(url: "/sliders").then((value) {
//
// //     brandsCar =BrandsCar.fromJson(value!.data);
// //     update();
// // print(brandsCar?.data?[0].name);
//   });
//     update();
// }
}
