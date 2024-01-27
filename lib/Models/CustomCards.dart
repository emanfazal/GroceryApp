import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/CardFAB.dart';
import 'package:groceries_app_ui/Products/ProductDetails.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';
import '../Order/AcceptedScreen.dart';
import 'CardList.dart';
class CustomCard extends StatelessWidget {
  final CardItem item;

  CustomCard(this.item,);

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(
         itemName: item.title,
         imagePath: item.imageUrl,
         detail: item.detail,
       )));
       // Navigator.push(context, MaterialPageRoute(builder: (context)=>AcceptedScreen()));
     },
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,top:20),
            child: Center(child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(item.imageUrl,))),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(item.title,style:h2size16black ,),
                SizedBox(height: 10,),
                Text(item.description,style:h2size16black ,),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(AppStrings.Price,style:h2size18black ,),
                    SizedBox(width: 50,),
                    // Spacer(),
            Align(
      alignment: Alignment.bottomLeft,
            child: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: CardButton(),
            )),

                  ],
                ),
                SizedBox(height:10,),
              ],
            ),
          ),


        ],
      ),
      
    );
  }
}