import 'package:flutter/material.dart';

import '../Components/CardFAB.dart';
import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
import '../Config/strings.dart';
import '../Products/ProductDetails.dart';
import 'CardList.dart';
class ExploredetailCard extends StatelessWidget {
  final CardItem Exploreitemlist;
  const ExploredetailCard(this.Exploreitemlist,);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails(
          itemName: Exploreitemlist.title,
          imagePath: Exploreitemlist.imageUrl,
          detail: Exploreitemlist.detail,
        )));
      },

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 40),
            child: Image.asset(Exploreitemlist.imageUrl,width: 45,height: 45,),
            // width: 35,height: 45,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(Exploreitemlist.title,style:h3size14black ,),
                SizedBox(height: 10,),
                Text(Exploreitemlist.description,style:h3size14black ,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text(AppStrings.Price,style:h2size16black ,),
                    SizedBox(width:40,),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child:Container(
                            width: 45,
                            height: 45                           ,
                            child: FloatingActionButton(
                                child: Icon(Icons.add,color: AppColors.Whiteheading,),
                                backgroundColor: AppColors.primaryColor,
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                onPressed:(){
                                  // press();
                                }),
                          )
                        )),

                  ],
                ),

              ],
            ),
          ),
            SizedBox(height: 5,)
        ],
      ),
    );
  }
}
