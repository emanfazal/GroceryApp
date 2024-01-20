import 'package:flutter/material.dart';

import '../Config/Colors.dart';
import 'PrimaryButton.dart';
class BottomGradientContainer extends StatefulWidget {
  const BottomGradientContainer({super.key});

  @override
  State<BottomGradientContainer> createState() => _BottomGradientContainerState();
}

class _BottomGradientContainerState extends State<BottomGradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [
      //       AppColors.PinkGradient,
      //       AppColors.GreenGradient,
      //       AppColors.PinkGradient,
      //       AppColors.Whiteheading,
      //     ],
      //     stops: [0.0, 0.3, 0.6, 1.0],
      //     begin: Alignment.topRight,
      //     end: Alignment.bottomLeft,
      //   ),
      // ),

      child: Column(
        children: [
          SizedBox(height: 20,),
          // PrimaryButton(text: AppStrings.Submit, textStyle: h2size18, press: (){
          //   NavigatetoHome(context);}
          ]),

      );

  }
}
