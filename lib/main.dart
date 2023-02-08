import 'package:ecommerce/Screens/Login%20Screen/Screens/LoginScreen.dart';
import 'package:ecommerce/Screens/SplashScreen/Screen/SplashScreens.dart';
import 'package:ecommerce/Screens/SplashScreen/Screen/Start%20Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreens.route,
      routes: {
        SplashScreens.route: (_) => SplashScreens(),
        StartScreen.route: (_) => StartScreen(),
        LoginScreen.route:(_)=>LoginScreen()
      },
    );
  }
}
