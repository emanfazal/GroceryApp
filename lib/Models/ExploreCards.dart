import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Models/ExploreModel.dart';
import 'package:groceries_app_ui/Products/ExpProductDetails/ExploreProductDetails.dart';

import '../Config/TextStyle.dart';
import 'ExploreModel.dart';
import 'GroceriesCardList.dart';
class ExploreCards extends StatelessWidget {
  const ExploreCards(this.ExploreItem); // Single parameter
  final ExploreItems ExploreItem;
  @override

  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploreDetails(itemName: ExploreItem.ItemName,)));

      },
      child: Card(
        color:ExploreItem.cardColor ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
        children: [  Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(ExploreItem.imagePath,),
        ),
        SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(ExploreItem.ItemName,style: h2size16black,),
          ),
        ],

        ),
      ),
    );

  }
}
