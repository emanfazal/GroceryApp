import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/CartButton.dart';
import 'package:groceries_app_ui/Components/PrimaryButton.dart';
import 'package:groceries_app_ui/Models/Cartlist.dart';

import '../../Config/Colors.dart';
import '../../Config/TextStyle.dart';
import '../../Config/assets.dart';
import '../../Models/CardList.dart';
import '../../Models/CartContoainers.dart';
import '../../Models/FavoriteContainers.dart';
import '../../Order/ErrorScreen.dart';
import '../../Screens/HomeScreen/HomeScreen.dart';
import '../CartScreen/CheckOut.dart';


class FavoriteBody extends StatefulWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Favorites", style: h2size20black),
          ),
          SizedBox(height: 20),

          SingleChildScrollView(
          child: Container(
    width: MediaQuery.of(context).size.width,
    height: 450,
    child: ListView.builder(
    scrollDirection: Axis.vertical,
    itemCount:Exploreitemlist.length,
    itemBuilder: (context, index) {
    return FavContainers(Exploreitemlist[index]);
    },
    ),
    ),
                  ),

          SizedBox(height: 20),
         PrimaryButton(text: 'Add All to Cart', textStyle: h2height18, press: (){
           _showAddAllToCartDialog(context);
           },),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}


void _showAddAllToCartDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(

        content: Container(
          // color: AppColors.white2,
          height: 600,
          width: 600,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
              ),
              Center(child: Image.asset(Images.OrderFailed)),
              SizedBox(height: 20,),
              Text("Oops! Order Failed",style: h2size28black,),
              SizedBox(height: 10,),
              Text("Something went tembly wrong.",style: h3size16grey,),
              Spacer(),
              PrimaryButton(
                text: 'Track Order',
                textStyle: h2height18,
                press: () {},
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () {
                    // Handle the action when "Back to home" is tapped
                  },
                  child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context) =>HomeScreen()));

                      },
                      child: Text("Back to home", style: h2size18black,)),
                ),
              )
            ],
          ),
        ),


      );
    },
  );
}
