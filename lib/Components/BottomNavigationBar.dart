import 'package:flutter/material.dart';

import '../Config/assets.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required List<BottomNavigationBarItem> items})
      : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      onTap: (index) {
        setState(() {
          myIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.login)), label: 'Home'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.login)), label: 'Home'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.login)), label: 'Home'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.login)), label: 'Home'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.login)), label: 'Home'),
      ],
    );
  }
}
