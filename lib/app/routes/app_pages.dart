import 'package:car_project/modules/home/views/Register_screen.dart';
import 'package:get/get.dart';

import '../../modules/home/views/login_Screen.dart';
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
      page: () => LoginScreen(
        title: 'gg',
      ), // page path
      binding: HomeBinding(),
      //  HomeBinding لما اتوجه على اللوجن استدعي ال
      // اللي فيها الكونترولر وحيستدعي منها وحيعرف الكونترولر في اللوغن
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterScreen(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.LAYOUT,
    //   page: () => LayoutView(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: _Paths.SelectionDoctorOrSickView,
    //   page: () => SelectionDoctorOrSickView(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: _Paths.UpdateProfileView,
    //   page: () => UpdateProfileView(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: _Paths.PATIENTS,
    //   page: () => PatientsView(),
    //   binding: PatientsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.Register_PATIENTS,
    //   page: () => RegisterPatientsView(),
    //   binding: PatientsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.LayoutPatientsAppView,
    //   page: () => LayoutPatientsAppView(),
    //   binding: PatientsBinding(),
    // ),
    // GetPage(
    //   name: _Paths.UpdateProfilePatientsView,
    //   page: () => UpdateProfilePatientsView(),
    //   binding: PatientsBinding(),
    // ),

    // GetPage(
    //     name: _Paths.AddArticleView,
    //     page: () => AddArticleView(),
    //     binding: HomeBinding()),

    // GetPage(
    //     name: _Paths.ArticleDetailsView,
    //     page: () => ArticleDetailsView(),
    //     binding: HomeBinding()),
    // GetPage(
    //     name: _Paths.ArticleView,
    //     page: () => ArticleView(),
    //     binding: PatientsBinding()),
    // GetPage(
    //     name: _Paths.ArticleDetailsPatientsView,
    //     page: () => ArticleDetailsPatientsView(),
    //     binding: PatientsBinding()),
    // GetPage(
    //     name: _Paths.UpdateArticleView,
    //     page: () => UpdateArticleView(),
    //     binding: HomeBinding()),
  ];
}
