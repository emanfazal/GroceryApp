import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/Colors.dart';class FloatingActionbutton extends StatelessWidget {
  const FloatingActionbutton({
  required this.press,
  }
      );
  final Function press;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.arrow_forward_ios,color: AppColors.Whiteheading,),
        backgroundColor: AppColors.primaryColor,
        shape: CircleBorder(),
        onPressed:(){
press();
    });
  }
}
