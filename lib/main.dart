import 'package:car_project/modules/home/views/layout/home_layout.dart';
import 'package:car_project/shared/style/AppTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
              colorScheme: ColorScheme(
                  primaryContainer: AppTheme.colors.White,
                  brightness: Brightness.light,
                  primary: AppTheme.colors.secondryColor,
                  onPrimary: AppTheme.colors.secondryColor,
                  secondary: AppTheme.colors.secondryColorText,
                  onSecondary: AppTheme.colors.secondryColor,
                  error: AppTheme.colors.secondryColor,
                  onError: AppTheme.colors.secondryColor,
                  background: AppTheme.colors.secondryColor,
                  onBackground: AppTheme.colors.primaryColorText,
                  surface: AppTheme.colors.secondryColor,
                  onSurface: AppTheme.colors.secondryColor),
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
