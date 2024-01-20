import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Models/Cartlist.dart';

import '../Components/Counter.dart';
import '../Config/Colors.dart';
import '../Config/TextStyle.dart';
class CartContainer extends StatelessWidget {
  final CartItems item;
  const CartContainer(this.item);

  @override

  Widget build(BuildContext context) {

    return Container(

      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: AppColors.white2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20,bottom: 10),
        child: Row(
          children: [
        Image.asset(item.imageUrl),
            Column(
              children: [
                Text(item.title,style: h2size16black,),
                SizedBox(height: 10,),
                Text(item.description,style: h3size14grey,),
                SizedBox(height: 10,),
                Counter(),

              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Icon(Icons.close,color: AppColors.Grey,),
                SizedBox(height: 35,),
                  Text(item.price,style: h2size18black,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
