import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/EmailLogin/LoginBody.dart';
import 'package:groceries_app_ui/Components/TopGradientContainer.dart';

import '../../Components/TopGradientImageContainer.dart';
import '../../Config/assets.dart';
class LoginWithEmail extends StatefulWidget {
  const LoginWithEmail({super.key});

  @override
  State<LoginWithEmail> createState() => _LoginWithEmailState();
}

class _LoginWithEmailState extends State<LoginWithEmail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          TopGradientContainer(imagepath: Images.login),
          SizedBox(height: 10,),
          Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 27),
                child: LoginBody(),
              )),
        ]
            ),
      )));
  }
}
