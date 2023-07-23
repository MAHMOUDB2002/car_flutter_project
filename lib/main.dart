import 'package:car_project/modules/home/views/layout/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/shared/style/AppTheme.dart';

void main() {
  runApp(MyApp());
}

// initialRoute: AppPages.INITIAL,
//       getPages: AppPages.routes,

// runApp(MaterialApp(
//   initialRoute: 'phone',
//   debugShowCheckedModeBanner: false,
//   routes: {
//     'phone': (context) => MyPhone(),
//     'verify': (context) => MyVerify()
//   },
// ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: AppTheme.colors.primaryColor,
              appBarTheme: AppBarTheme(
                  // shape: OvalBorder(),
                  elevation: 0.0)
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
              ),
          home: HomeLayout(),
        );
      },
    );
  }
}
