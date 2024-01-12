import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/SignupScreen/SignupForm.dart';

import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  @override
  Widget build(BuildContext context) {
    return
Column(

children: [

  Align(
    alignment: Alignment.topLeft,
    child: Text(AppStrings.SignUp,style: h1size26,),
  ),
  SizedBox(height: 15,),
  Align(
    alignment: Alignment.topLeft,
    child: Text(AppStrings.Credentials,style: h3size16grey,),

  ),
  SizedBox(height: 25,),
  Align(
    alignment: Alignment.topLeft,
    child: Text(AppStrings.Username,style: h3size16grey,),

  ),
  SizedBox(height: 5),
  SignupForm()
],
);}}
