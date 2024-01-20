import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Screens/ProfileScreen/ProfileBody.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ProfileBody();
  }
}
