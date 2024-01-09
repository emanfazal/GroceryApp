import 'package:flutter/material.dart';

import '../Components/TopGradientImageContainer.dart';
import '../Config/assets.dart';
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
      body: Expanded(
      child: Column(
      children: [
      GradientImageContainer(imagepath: Images.login,
      leading: IconButton(

        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),

    )]
    ))));
  }
}
