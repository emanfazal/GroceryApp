import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/TextStyle.dart';
import 'package:groceries_app_ui/Config/strings.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.primaryColor,

          body: Center(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.logo,
                          height:
                          63.61,
                        width:
                        54.7,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Images.logoText,
                          height:
                        65 ,
                          width:
                         194 ,
                        ),
                        Text(
AppStrings.appTitle,
                          style:  h2height18,

                        ),
                      ],
                    )
                  ],
                )
                // Image.asset(Images.Image1,
                //   height:
                //   68.61,
                //   width: 267.42,
                // )
              ],
            ),
          ) ,

      ),
    );
  }
}
