import 'dart:async';

import 'package:car_project/api/end_points.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/remote/dio_helper.dart';
import '../../local/cash_helper.dart';
import '../../model/all_brand_model.dart';
import '../../model/all_car_model.dart';
import '../../model/all_sliders_model.dart';
import '../../model/car_details_model.dart';
import '../../model/home_model.dart';
import '../../model/image/carousel_slider_model.dart';

class HomeController extends GetxController {
  bool loading = true;
  bool isChecked = false;
  final TextEditingController dropdownController = TextEditingController();
  bool showBottonSheetCity = false;
  // static CarDetailsController get to => Get.find();

  String? valueChoose;
  List<String> items = [
    "Giulia",
    "GT-R",
    "Elmiraj",
    "RX-V",
  ];

  dropDownButton(newValue) {
    valueChoose = newValue;
    update();
  }

  changValueBottonSheetCity(bool value) {
    showBottonSheetCity = value;
    // print(showBottonSheetCity);
    update();
  }

  List<String> choices = ["Price", "Reviews", "FAQ"];
  List<String> choicesPhoto = ["Photos", "Videos"];

  String? nameOfCountry;
  var dropDownValue =
      "City"; // add one value as the defaul one which must exists in the dropdown value
  changeValueOfDropDownValue(value) {
    dropDownValue = value;
    print(value);
    update();
  }

  changeNameOfCountry(value) {
    nameOfCountry = value;
    update();
  }

  bool valueOffers = false;

  changeValueOfOffers(bool value) {
    valueOffers = value;
    update();
  }

  int index = 0;
  double rotationX = 0.0;
  double rotationY = 0.0;

  void changeValueOfTransform(rotationX, rotationY) {
    this.rotationX += rotationX;
    this.rotationY -= rotationY;
    update();
  }

  final pController = PageController(
    viewportFraction: 1,
    keepPage: true,
  );

  bool isDark = false;

  void changeAppMode({bool? fromShared}) {
    if (fromShared != null) {
      isDark = fromShared;
      update();
    } else {
      isDark = !isDark;
      CashHelper.putBool(key: 'isDark', value: isDark).then((value) {
        update();
      });
    }
  }

  // List<ImageModel> images = [
  //   ImageModel(
  //     id: 1,
  //     imageType: "Extreme bump test",
  //     imageName: 'first test! 100km/h extreme bump test',
  //     imageImage: 'assets/images/cc.png',
  //   ),
  //   ImageModel(
  //     id: 2,
  //     imageType: "Extreme bump test",
  //     imageName: 'first test! 100km/h extreme bump test',
  //     imageImage: 'assets/images/cc.png',
  //   ),
  //   ImageModel(
  //     id: 3,
  //     imageType: "Extreme bump test",
  //     imageName: 'first test! 100km/h extreme bump test',
  //     imageImage: 'assets/images/cc.png',
  //   ),
  //   ImageModel(
  //     id: 4,
  //     imageType: "Extreme bump test",
  //     imageName: 'first test! 100km/h extreme bump test',
  //     imageImage: 'assets/images/cc.png',
  //   ),
  // ];
  // List networkImage = [
  //   'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
  //   'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
  //   'https://images.pexels.com/photos/733745/pexels-photo-733745.jpeg?auto=compress&cs=tinysrgb&w=600',
  // ];
  List<int> myColors = [
    0Xfff00AC5E,
    0XfffF6C604,
    0XfffFF3131,
    // 0Xfff424243,
    // 0Xfff006DEA
  ];
  int indexChoices = 0;

  void changeValueOfIndex(value) {
    index = value;
    print(index);
    update();
  }

  void changeValueOfIndexindexChoices(value) {
    indexChoices = value;
    print(indexChoices);
    update();
  }

  @override
  void onInit() {
    // print(screenWidth);
    getAllHomeData();
    getSlider();
    super.onInit();
  }

  @override
  void onReady() {
    pageController = PageController(initialPage: indexSlider);
    _startAutoScroll();

    update();
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
    _timer?.cancel();

    super.onClose();
  }

  void _startAutoScroll() {
    const Duration autoScrollDuration = Duration(seconds: 3);

    _timer = Timer.periodic(autoScrollDuration, (Timer timer) {
      if (indexSlider < carouserSliderModel.length - 1) {
        indexSlider++;
      } else {
        indexSlider = 0;
      }
      if (pageController.hasClients) {
        pageController.animateToPage(
          indexSlider,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  List<Cars?>? cars = [];
  List<CarouselSliderModel> carouserSliderModel = [
    CarouselSliderModel(
        image:
            "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
        text1: "Extreme bump test",
        text2: "First test! 100km/h extreme bump test"),
    CarouselSliderModel(
      text1: "Extreme bump test",
      text2: "First test! 100km/h extreme bump test",
      image:
          "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
    ),
    CarouselSliderModel(
      text1: "Extreme bump test",
      text2: "First test! 100km/h extreme bump test",
      image:
          "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
    ),
    CarouselSliderModel(
      text1: "Extreme bump test",
      text2: "First test! 100km/h extreme bump test",
      image:
          "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
    ),
  ];
  Timer? _timer;
  // int index = 0;
  // List<Widget> screen = [
  //   HomeScreen(),
  //   BuyCarScreen(),
  //   CommunityScreen(),
  //   ProfileScreen(),
  // ];
  List<String> imageOfCarBuyPage = [
    "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/cup.svg?alt=media&token=ee0d372e-0aa7-47b3-9907-34a9c69c5a58",
    "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/fire.svg?alt=media&token=11c39ddb-9c91-4426-bab8-2d7093e6c919",
    "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/star.svg?alt=media&token=7210f5c7-029f-4fb7-88d5-126768ab3652",
    "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/gift.svg?alt=media&token=0b32cec0-379a-4c50-9b02-451c0378e306"
  ];
  List<String> image = [
    "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*",
    "https://hips.hearstapps.com/hmg-prod/images/2023-mclaren-artura-101-1655218102.jpg?crop=1.00xw:0.847xh;0,0.153xh&resize=1200:*"
  ];

  changeValueIndex(value) {
    this.index = value;
    update();
  }

  List<CarouselSliderModel> carouselSliderModel = [
    CarouselSliderModel(
        image:
            "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/document.svg?alt=media&token=57af94f3-2704-4f6b-9483-7991971c7d21",
        text1: "My order"),
    CarouselSliderModel(
        image:
            "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/repair.svg?alt=media&token=578328ff-a2d0-48bb-a71a-6d87b098c19a",
        text1: "Maintain"),
    CarouselSliderModel(
        image:
            "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/shoping.svg?alt=media&token=ef3c0c2a-9bde-48b7-b6c0-af0302a026c8",
        text1: "Auto parts"),
    CarouselSliderModel(
        image:
            "https://firebasestorage.googleapis.com/v0/b/carapp-2f7b1.appspot.com/o/driver.svg?alt=media&token=106af81e-114d-4e68-885b-267da8b03588",
        text1: "Driving skills"),
  ];
  PageController pageController = PageController();
  int indexSlider = 0;

  chanValueOfIndexSlider(int value) {
    indexSlider = value;
    update();

    update();
  }

  HomeModel? homeModel;

  getAllHomeData() {
    DioHelper.get_data(url: HOME).then((value) async {
      //if (value.statusCode == 200) {
      homeModel = await HomeModel.fromJson(value.data);
      // (json.decode(value.data));
      // cars = homeModel!.data!.cars;
      //   homeModel!.data!.cars!.forEach((element) {

      // });
      update();
      // }
    });
  }

  AllCarsModel? allCarModel;

  getAllCar() async {
    await DioHelper.get_data(url: CARS).then((value) async {
      // if (value.statusCode == 200) {
      allCarModel = await AllCarsModel.fromJson(value.data);
      update();
      // }
    });
  }

  AllBrandModel? allBrands;

  Future<void> getALLBrands() async {
    await DioHelper.get_data(url: ALLBRANDS).then((value) async {
      allBrands = await AllBrandModel.fromJson(value.data);
      update();
    });
  }

  AllSliders? allSliders;
  Future<void> getSlider() async {
    await DioHelper.get_data(url: SLIDERS).then((value) async {
      allSliders = await AllSliders.fromJson(value.data);
      update();
// print(brandsCar?.data?[0].name);
    });
    update();
  }

  CarDetailsModel? carDetailsl;

  Future<void> getDataOfCar(id) async {
    await DioHelper.get_data(url: "$CARS/$id").then((value) async {
      // if (value.statusCode == 200) {
      carDetailsl = await CarDetailsModel.fromJson(value.data);
      print(carDetailsl!.data!.name);
      update();
      // }
    });
  }
}
