import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Config/Colors.dart';

import '../Config/TextStyle.dart';
import '../Config/strings.dart';
class CartButton extends StatelessWidget {

  const CartButton({
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

        width:350,
        height: 74,
        decoration: BoxDecoration(
            color:AppColors.primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            )),
        child: Material(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(
              Radius.circular(15.0)),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
            onTap: () {
              press();
            },
            child: Center(
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        text,
                        style: textStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      height: 18,
                      width: 39,
                      color: AppColors.greenbutton,
                      child: Text(AppStrings.Price,style: h2height12white,),
                    ),
                  )
                ],
              ),
            ),
          ),

        ))
    ;

  }
}
