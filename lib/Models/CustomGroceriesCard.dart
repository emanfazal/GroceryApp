import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Models/GroceriesCardList.dart';

import '../Config/TextStyle.dart';
class GroceriesCard extends StatelessWidget {
  final GroceriesItem items;

  const GroceriesCard(this.items);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: (){

      },
      child: Card(
        color:items.cardColor ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(items.imagePath,height: 71,width: 71,),
            ),
            SizedBox(width: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(items.ItemName,style: h2size20black,),

            ),
            SizedBox(width: 25,),
          ],
        ),
      ),
    );

  }
}
