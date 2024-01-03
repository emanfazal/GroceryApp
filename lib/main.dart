import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Screens/Splash/SplashScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SplashScreen() ,
      ),
    );
  }
}


