import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/Verification.dart';
import 'package:groceries_app_ui/Components/FAB.dart';

import '../../Components/CountryCodewithnumber.dart';
import '../../Components/DialPad.dart';
import '../../Config/TextStyle.dart';
import '../../Config/strings.dart';
class ScreenComponents extends StatefulWidget {
  const ScreenComponents({super.key});

  @override
  State<ScreenComponents> createState() => _ScreenComponentsState();
}

class _ScreenComponentsState extends State<ScreenComponents> {
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        SizedBox(height: 30),
        Text(AppStrings.MobileNumber,style: h3size16kgrey,),
        CountryCode(),
SizedBox(height: 50,),
Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: FloatingActionbutton(press: (){
        Goto(context);
      },),
    )),
      ],


    );

  }
}
Goto(BuildContext context){

  Navigator.push(
    context ,
    MaterialPageRoute(builder: (context) =>VerifywithCode()),
  );
}
