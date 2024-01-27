import 'package:flutter/material.dart';

import 'SignInBody.dart';
class SignInScreen extends StatefulWidget {
  static String routeName = "/SignInScreen";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SigninBody(),
      );
  }
}
