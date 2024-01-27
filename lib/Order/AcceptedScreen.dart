import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Config/strings.dart';

import '../Config/TextStyle.dart';
import '../Config/assets.dart';
import '../Config/Colors.dart';
import '../Screens/HomeScreen/HomeScreen.dart';

class AcceptedScreen extends StatefulWidget {
  const AcceptedScreen({super.key});

  @override
  State<AcceptedScreen> createState() => _AcceptedScreenState();
}

class _AcceptedScreenState extends State<AcceptedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                AppColors.PinkGradient,
                // AppColors.Whiteheading,
                AppColors.GreenGradient,
                AppColors.GreenGradient,

              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Center(child: Image.asset(Images.OrderAccepted)),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40,left: 40),
                    child: Text(
                      AppStrings.OrderPlaced,
                      style: h2size28black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Your items has been placed and is on \n     its way to being processed",
                    style: h3size14grey,
                  ),
                ),
                Spacer(),
                PrimaryButton(
                  text: 'Track Order',
                  textStyle: h2height18,
                  press: () {},
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: () {
                      // Handle the action when "Back to home" is tapped
                    },
                    child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(
                            context,
                            HomeScreen.routeName,
                          );
                        },
                        child: Text("Back to home", style: h2size18black,)),
                  ),
                )
              ],
            ),
          ),
        ),

    );
  }
}
