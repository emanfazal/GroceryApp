import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Screens/HomeScreen/HomeBody.dart';

import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int myIndex=0;
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle:h4size8green,
    unselectedLabelStyle: h4size8black,
    onTap: (index) {
    setState(() {

myIndex=index;       } );},
          items: [

          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.Bottom1), color: myIndex == 0 ? Colors.green : Colors.black,
          ),label: "home",),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.Bottom1), color: myIndex == 1 ? Colors.green : Colors.black,),label: "home",              labelStyle: TextStyle(color: myIndex == 0 ? Colors.green : Colors.black),
          ),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(Images.Bottom1), color: myIndex == 2 ? Colors.green : Colors.black,),label: "home"),

        ],

        ),
body: SingleChildScrollView(child: HomescreenBody(),),
      ),
    );
  }
}
