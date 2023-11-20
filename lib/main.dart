import 'package:bubbl/screens/splash_screen.dart';
import 'package:bubbl/services/shared/share_bottom_service.dart';
import 'package:bubbl/utilities/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: primaryColor, // status bar color
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColor.primaryColor, // Change this to your primary color
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ModelProviders()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: AppColor.primaryColor,
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
      ),
    );
  }
}

