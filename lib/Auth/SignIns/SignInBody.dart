

import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/LoginthroughNumber/EnterNumber.dart';
import 'package:groceries_app_ui/Auth/EmailLogin/LoginWithEmail.dart';
import 'package:groceries_app_ui/Components/CountryCodewithnumber.dart';
import 'package:groceries_app_ui/Components/SocialMediaButtons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../Components/CountryCodePicker.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
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

      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.pic1),
          fit: BoxFit.fill,
        ),
      ),
    ),
    ),
SizedBox(
  height: 10,
),
    Padding(
      padding: const EdgeInsets.only(left: 20,right:20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
          AppStrings.getyourgroceries,
            style: h1size26,
          ),
          // ountryCode(),
          SizedBox(height: 20,),
          CountryCodePickerScreen(),
          SizedBox(height: 50,),
          Center(

            child: Text(
              AppStrings.connect,
              style: h3size14,
            ),
          ),
 SizedBox(height: 50,),
 Center(
   child: Center(
     child: Column(
       children: [
         SocialButtons(text: AppStrings.EmailLogin, textStyle: h2size18, color: AppColors.EmailButtonColor, iconpath:Images.GoogleIcon, press: () {
                  GotoEmailScreen(context);
                  },),
         SizedBox(height: 10,),
         SocialButtons(text: AppStrings.FacebookLogin, textStyle: h2size18, color: AppColors.FacebookButtonColor, iconpath:Images.FacebookIcon, press: () {
         },),

       ],
     ),
   ),
 )
        ],
      ),
    ),


  ],
),

    );
  }
}
Navigate(BuildContext context){

  Navigator.push(
    context ,
    MaterialPageRoute(builder: (context) =>LoginWithNumber()),
  );}
  GotoEmailScreen(BuildContext context){
    Navigator.push(
      context ,
      MaterialPageRoute(builder: (context) =>LoginWithEmail()),
    );
  }

