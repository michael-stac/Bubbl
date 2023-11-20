import 'package:bubbl/screens/splash_screen.dart';
import 'package:bubbl/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
          appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: Colors.white, elevation: 0),
          highlightColor: AppColor.grayColor,
          primaryColor: AppColor.primaryMaterialColor,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColor.primaryMaterialColor)
              .copyWith(secondary: AppColor.primaryMaterialColor)),

      home: const SplashScreen(),
    );
  }
}

