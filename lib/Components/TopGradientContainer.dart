import 'package:flutter/material.dart';

import '../Config/Colors.dart';
class TopGradientContainer extends StatelessWidget {
  const TopGradientContainer({super.key, required this.imagepath,
  
  });
  final String imagepath;
  @override
  Widget build(BuildContext context) {
    return Container(

        height: 150,
    //     decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //     colors: [
    //     AppColors.PinkGradient,
    //     AppColors.GreenGradient,
    //     AppColors.PinkGradient,
    //     AppColors.Whiteheading,
    //     ],
    //     stops: [0.1, 0.3, 0.6, 1.0],
    //     begin: Alignment.topRight,
    //     end: Alignment.bottomLeft,
    // ),),
        child: Align(
          alignment: Alignment.center,
        child:Image.asset(imagepath, width: 47,height: 55,) ,
    ),
    );

  }
}
