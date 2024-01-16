import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/CardFAB.dart';
import 'package:groceries_app_ui/Products/ProductDetails.dart';

import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';
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
       )));
     },
      child: Card(

      color:Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
      side: BorderSide(color:AppColors.PinkGradient),
          borderRadius: BorderRadius.circular(8),

        ),

        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Center(child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(item.imageUrl,height: 99,width:79))),
            ),
            // ListTile(
            //   title: Text(item.title,style: h2size16black,),
            //   subtitle: Text(item.description,style: h3size14grey,),
            //
            // ),
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
                      SizedBox(width: 100,),
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
      ),
    );
  }
}