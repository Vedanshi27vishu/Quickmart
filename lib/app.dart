import 'package:ecommerce/features/authentication/screens/loginscreen.dart';
import 'package:ecommerce/features/authentication/screens/onboarding.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/theme/theme.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lighttheme,
      darkTheme: TAppTheme.darktheme,
      home: initScreen==0?const OnBoardingScreen():const LoginScreen(),
    );
  }
}
