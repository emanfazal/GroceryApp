

import 'package:flutter/cupertino.dart';

import 'Auth/EmailLogin/LoginWithEmail.dart';
import 'Auth/LoginthroughNumber/EnterNumber.dart';
import 'Auth/SelectlocationScreen/SelectLocation.dart';
import 'Auth/SignIns/SignIn.dart';
import 'Auth/SignupScreen/SignUpWithEmail.dart';
import 'Auth/VerificationwithCodeScreen/Verification.dart';
import 'Screens/HomeScreen/HomeScreen.dart';
import 'Screens/Splash/SplashScreen.dart';
import 'Screens/Welcome/WelcomeScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  WelcomeScreen.routeName:(context)=>const WelcomeScreen(),
  SignInScreen.routeName:(context)=>const SignInScreen(),
  LoginWithNumber.routeName:(context)=>const LoginWithNumber(),
  LoginWithEmail.routeName:(context)=>const LoginWithEmail(),
  VerifywithCode.routeName:(context)=>const VerifywithCode(),
  SelectLocation.routeName:(context)=>const SelectLocation(),
  HomeScreen.routeName:(context)=>const HomeScreen(),
  Signup.routeName: (context) => const Signup(),
};


