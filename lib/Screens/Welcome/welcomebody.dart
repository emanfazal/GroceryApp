import 'package:flutter/material.dart';
class WelcomeBody extends StatefulWidget {
  const WelcomeBody({super.key});

  @override
  State<WelcomeBody> createState() => _WelcomeBodyState();
}

class _WelcomeBodyState extends State<WelcomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    children: [
      Text("Welcome Screen"),
    ],
  ),
),
    );
  }
}
