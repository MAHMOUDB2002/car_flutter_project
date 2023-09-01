import 'package:car_project/modules/views/Authentication/verification_screen.dart';
import 'package:car_project/modules/views/auto_parts.dart';
import 'package:car_project/modules/views/brand_screen.dart';
import 'package:car_project/modules/views/buy_car_screen.dart';
import 'package:car_project/modules/views/community_screen.dart';
import 'package:car_project/modules/views/details/car_details_price.dart';
import 'package:car_project/modules/views/details/car_details_view.dart';
import 'package:car_project/modules/views/details/compare_cars.dart';
import 'package:car_project/modules/views/details/compare_cars_list.dart';
import 'package:car_project/modules/views/layout/home_layout.dart';
import 'package:car_project/modules/views/my_order_screen.dart';
import 'package:car_project/modules/views/details/news_details_review%20.dart';
import 'package:car_project/modules/views/popular_brand_screen.dart';
import 'package:car_project/modules/views/profile_screen.dart';
import 'package:car_project/modules/views/search/search_brand_screen.dart';
import 'package:car_project/modules/views/search/search_model_screen.dart';
import 'package:car_project/modules/views/search/search_screen.dart';
import 'package:car_project/modules/views/video_details_review.dart';
import 'package:car_project/modules/views/video_details_screen.dart';
import 'package:get/get.dart';

import '../../modules/views/Authentication/Register_screen.dart';
import '../../modules/views/Authentication/location _screen.dart';
import '../../modules/views/Authentication/login_Screen.dart';
import '../../modules/views/details/car_details1.dart';
import '../../modules/views/details/news_details.dart';
import '../binding/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

// عشان الدخول لما يطفي التطبيق ويرجع يضويه
  // static var INITIAL = valueOfSelection == false
  //     ? tokenValueDoctor == true
  //         ? Routes.LAYOUT
  //         : Routes.PageSelectionDoctorOrPatient
  //     : tokenValuePatients == true
  //         ? Routes.LayoutPatientsAppView
  //         : Routes.PageSelectionDoctorOrPatient;

  static final routes = [
    // function to navigatebetween pages
    GetPage(
      name: _Paths.LOGIN, // page name
      page: () => LoginPage(), // page path
      binding: HomeBinding(),
      //  HomeBinding لما اتوجه على اللوجن استدعي ال
      // اللي فيها الكونترولر وحيستدعي منها وحيعرف الكونترولر في اللوغن
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.Verrification,
      page: () => VerificationScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME_LAYOUT,
      page: () => HomeLayout(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.MyLocation,
      page: () => LocationView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BuyCar,
      page: () =>  BuyCarScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.Community,
      page: () => CommunityScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.SEARCH_BRAND,
      page: () => SearchBrandScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.SEARCH_MODEL,
      page: () => SearchModelScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.Brand,
      page: () => PopularBrandScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.Brand2,
      page: () => BrandScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.NEWS_DETALIS,
      page: () => NewsDetailsScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.NEWSDETALIS_REVIEW,
      page: () => NewsDetailsReviewScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.VIDEO,
      page: () => VideoDetailsScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.VIDEO_REVIEW,
      page: () => VideoDetailsReviewScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.CAR_DETAILS_PRICE,
      page: () => CarDetailsPrice(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.COMPARE_CARS,
      page: () => CompareCars(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.COMPARE_CARS_LIST,
      page: () => CompareCareList(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.AUTO_PARTS,
      page: () => AutoPartsScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.MY_ORDER,
      page: () => MyOrderScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.CAR_DETAILS_VIEW,
      page: () => CarDetailsView(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.BuyCar,
      page: () => BuyCarScreen(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: _Paths.HOME_LAYOUT,
      page: () => HomeLayout(),
      binding: HomeBinding(),
    ),

GetPage(
      name: _Paths.CAR_DETAILS1_VIEW,
      page: () => CarDetails1Screen(),
      binding: HomeBinding(),
    ),
    
  ];
}
