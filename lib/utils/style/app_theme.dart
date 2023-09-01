import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/color.dart';

ThemeData themelight = ThemeData(
    colorScheme: ColorScheme(
        primaryContainer: AppColor.White,
        brightness: Brightness.light,
        primary: AppColor.White,
        onPrimary: AppColor.secondryColor,
        secondary: AppColor.secondryColorText,
        onSecondary: AppColor.secondryColor,
        error: const Color.fromRGBO(29, 178, 84, 1),
        onError: AppColor.secondryColor,
        background: AppColor.secondryColor,
        onBackground: AppColor.primaryColorText,
        surface: AppColor.primaryColor,
        primaryVariant: AppColor.secondryColor,
        onSurface: AppColor.secondryColor),
    scaffoldBackgroundColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.grey),
        // shape: OvalBorder(),
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
        elevation: 0.0)
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    // useMaterial3: true,
    );

ThemeData themeDark = ThemeData(
    colorScheme: ColorScheme(
        primaryContainer: AppColor.White,
        brightness: Brightness.light,
        primary: AppColor.White,
        onPrimary: AppColor.secondryColor,
        secondary: AppColor.secondryColorText,
        onSecondary: AppColor.secondryColor,
        error: const Color.fromRGBO(29, 178, 84, 1),
        onError: AppColor.secondryColor,
        background: AppColor.secondryColor,
        onBackground: AppColor.primaryColorText,
        surface: AppColor.primaryColor,
        primaryVariant: AppColor.secondryColor,
        onSurface: AppColor.secondryColor),
    scaffoldBackgroundColor: AppColor.darkMode,
    appBarTheme: AppBarTheme(
        // shape: OvalBorder(),
        backgroundColor: AppColor.darkMode,
        elevation: 0.0)
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    // useMaterial3: true,
    );
