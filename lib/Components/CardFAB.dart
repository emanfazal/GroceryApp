import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
class CardButton extends StatelessWidget {
  // const CardButton({
  //   // required this.press,
  // }
  //     );
  // final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50
      ,
      child: FloatingActionButton(
          child: Icon(Icons.add,color: AppColors.Whiteheading,),
          backgroundColor: AppColors.primaryColor,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          onPressed:(){
            // press();
          }),
    );
  }
}
