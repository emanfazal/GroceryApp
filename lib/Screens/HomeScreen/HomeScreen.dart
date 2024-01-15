import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Screens/HomeScreen/HomeBody.dart';

import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: h4size8green,
        unselectedLabelStyle: h4size8black,
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.Bottom1),
              color: myIndex == 0 ? Colors.green : Colors.black,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.Bottom2),
              color: myIndex == 1 ? Colors.green : Colors.black,
              size: 20,

            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 25,
              height: 25,
              child: ImageIcon(
                AssetImage(Images.Bottom3),
                color: myIndex == 2 ? Colors.green : Colors.black,
                size: 20,

              ),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              child: ImageIcon(
                AssetImage(Images.Bottom4),
                color: myIndex == 3 ? Colors.green : Colors.black,

              ),
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(Images.Bottom5),
              color: myIndex == 4 ? Colors.green : Colors.black,
              size: 20,

            ),
            label: "Profile",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: HomescreenBody(),
      ),
    );
  }
}
