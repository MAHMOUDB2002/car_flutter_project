import 'package:car_project/app/binding/home_binding.dart';
import 'package:car_project/app/routes/app_pages.dart';
import 'package:car_project/helpers/remote/dio_helper.dart';
import 'package:car_project/modules/controllers/home_controller.dart';
import 'package:car_project/modules/views/Authentication/login_Screen.dart';
import 'package:car_project/modules/views/layout/home_layout.dart';
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
  bool? isDark = CashHelper.getBool(key: 'isDark');

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp(
    // isDark: isDark,
  ));
}

class MyApp extends StatelessWidget {
  // bool? isDark;
  MyApp({super.key, bool? isDark});

  @override
  Widget build(BuildContext context) {
    // HomeController().changeAppMode(fromShared: isDark);
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themelight,
          // darkTheme: themeDark,
          // themeMode:  HomeController().isDark ? ThemeMode.dark : ThemeMode.light,
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
