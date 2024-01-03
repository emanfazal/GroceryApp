import 'dart:async';

import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
import 'package:groceries_app_ui/Screens/Splash/splashbody.dart';
import '../../Config/assets.dart';
import '../WelcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 10),
          () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.primaryColor, // Assuming AppColors.primaryColor is correctly defined
        body: SplashBody(),
      ),
    );
  }
}
