import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/LoginthroughNumber/Components.dart';
import 'package:groceries_app_ui/Components/GradientContainer.dart';
import 'package:groceries_app_ui/Config/Colors.dart';

import '../../Config/strings.dart';
class LoginWithNumber extends StatefulWidget {

  const LoginWithNumber({super.key, });

  @override

  State<LoginWithNumber> createState() => _LoginWithNumberState();
}

class _LoginWithNumberState extends State<LoginWithNumber> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
         children:[
         GradientContainer(
           text: AppStrings.EnterMobileNo,
           leading: IconButton(

        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
         ),
Padding(
  padding: const EdgeInsets.only(left: 30),
  child: ScreenComponents(),
),




         ],
        )
      ),
    );
  }
}
