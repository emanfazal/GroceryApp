import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Models/CardList.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import 'Cartlist.dart';

class FavContainers extends StatelessWidget {
  const FavContainers(this.favList);
 final CardItem favList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,

      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.Grey,
            width: 1.0, // You can adjust the width as needed
          ),
        ),
      ),
child: Padding(
  padding: EdgeInsets.only(left: 20),
  child:Row (
  children: [
    Image.asset(favList.imageUrl,height: 50,width: 50,),
    SizedBox(width: 20,),
    Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(favList.title,style: h2size16black,),
          Text(favList.description,style: h3size14grey,),
        ],
      ),
    ),
    Spacer(),
    Text("\$1.99",style:h2size16black ,),
    SizedBox(width: 10,),
    Icon(Icons.arrow_forward_ios_sharp,color: AppColors.Blackheading,),

  ]
  ),
),
    );
  }
}
