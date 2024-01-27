import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/SignupScreen/SignupBody.dart';

import '../../Components/TopGradientContainer.dart';
import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../SignIns/SignIn.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});
  static String routeName = "/Signup";

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      // Navigate back to the sign-in screen
      Navigator.pushReplacementNamed(context, SignInScreen.routeName);
      return true; // Prevent default back button behavior
    },
    child:   Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.PinkGradient,
                AppColors.GreenGradient,

                AppColors.Whiteheading,
                AppColors.Whiteheading,
                AppColors.Whiteheading,
                AppColors.Whiteheading,
                AppColors.Whiteheading,
                AppColors.Whiteheading,
                AppColors.PinkGradient,
                // AppColors.Whiteheading,
                AppColors.GreenGradient,
                AppColors.GreenGradient,

              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(child: Column(

              children: [
                TopGradientContainer(imagepath: Images.login),
                SizedBox(height: 10,),
                Align(alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: SignupBody(),
                    )),
              ]

          )),
        ),

    ));
  }
}
