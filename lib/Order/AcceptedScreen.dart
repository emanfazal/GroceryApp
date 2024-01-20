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
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.PinkGradient,
                AppColors.GreenGradient,

                AppColors.Whiteheading,
                AppColors.Whiteheading,
                AppColors.PinkGradient,
                // AppColors.Whiteheading,
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
                  padding: EdgeInsets.only(top: 50),
                  child: Center(child: Image.asset(Images.OrderAccepted)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  AppStrings.OrderPlaced,
                  style: h2size28black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Your items has been placed and is on its way to being processed",
                  style: h3size14grey,
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
                          Navigator.push(context,MaterialPageRoute(builder:(context) =>HomeScreen()));

                        },
                        child: Text("Back to home", style: h2size18black,)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
