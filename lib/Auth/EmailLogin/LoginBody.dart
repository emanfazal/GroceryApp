import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/EmailLogin/LoginForm.dart';
import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {


  @override


  @override


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.topLeft,
          child: Text(AppStrings.Loging,style: h1size26,),
        ),
        SizedBox(height: 15,),
        Align(
          alignment: Alignment.topLeft,
          child: Text(AppStrings.EnterEmail,style: h3size16grey,),
        ),
        SizedBox(height: 15,),
        Align(
          alignment: Alignment.topLeft,
          child: Text(AppStrings.Email,style: h3size16grey,),
        ),
        SizedBox(height: 5),
       SignInForm(),
      ],
    );
  }
}
