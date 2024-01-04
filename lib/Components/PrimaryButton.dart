import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
class PrimaryButton extends StatelessWidget {

  const PrimaryButton({
  Key? key,
    required this.text,
    required this.textStyle,


    required this.press,

  }): super(key: key);
  final String text;


  final Function press;
  final TextStyle textStyle;



  @override
  Widget build(BuildContext context) {
    return Container(

        width:353,
        height: 64,
        decoration: BoxDecoration(
        color:AppColors.primaryColor,
        borderRadius: const BorderRadius.all(
        Radius.circular(50.0),
    )),
    child: Material(
    color: Colors.transparent,
    borderRadius: const BorderRadius.all(
    Radius.circular(50.0)),
    child: InkWell(
    borderRadius: const BorderRadius.all(
    Radius.circular(50.0),
    ),
      onTap: () {
        press();
      },
      child: Center(
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    ),

    ))
    ;

  }
}
