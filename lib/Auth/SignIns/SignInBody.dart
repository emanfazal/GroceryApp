import 'package:flutter/material.dart';

import '../../Config/assets.dart';
import '../../Config/strings.dart';
class SigninBody extends StatefulWidget {
  const SigninBody({super.key});

  @override
  State<SigninBody> createState() => _SigninBodyState();
}

class _SigninBodyState extends State<SigninBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    //


   Flexible(
    child: Container(

      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.pic1),
          fit: BoxFit.fill,
        ),
      ),
    ),
    ),

    Padding(
      padding: const EdgeInsets.only(),
      child: Text(
      AppStrings.getyourgroceries,
        // style: ,
      ),
    )
  ],
),
    );
  }
}
