import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Auth/SignupScreen/SignupBody.dart';

import '../../Components/TopGradientContainer.dart';
import '../../Config/assets.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(child: Column(

            children: [
              TopGradientContainer(imagepath: Images.login),
              SizedBox(height: 10,),
              Align(alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: SignupBody(),
                  )),
            ]

        )),
      ),
    );
  }
}
