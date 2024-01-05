import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app_ui/Config/Colors.dart';
import 'package:groceries_app_ui/Config/assets.dart';
class SocialButtons extends StatelessWidget {

  const SocialButtons({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.color,
required this.iconpath,

    required this.press,

  }): super(key: key);
  final String text;
final Color color;

  final Function press;
  final TextStyle textStyle;

final String iconpath;

  @override
  Widget build(BuildContext context) {
    return Container(

        width:364,
        height: 67,
        decoration: BoxDecoration(
            color:color,
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset(
                iconpath,

                      width: 22,
                      height: 24,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      text,
                      style: textStyle,

                    )
                  ],
                ),
              ),
            )
          ),

        ))
    ;

  }
}
