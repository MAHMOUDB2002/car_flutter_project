import 'package:car_project/app/binding/home_binding.dart';
import 'package:car_project/app/routes/app_pages.dart';
import 'package:car_project/helpers/remote/dio_helper.dart';
import 'package:car_project/modules/views/Authentication/login_Screen.dart';
import 'package:car_project/utils/style/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'local/cash_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await DioHelper.init();
  await CashHelper.init();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themelight,
          initialBinding: HomeBinding(),
          getPages: AppPages.routes,
          // initialRoute: AppPages.,
          //  HomeBinding(),
          home: LoginPage(),
        );
      },
    );
  }
}
