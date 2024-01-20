import 'package:flutter/material.dart';
import 'package:groceries_app_ui/Components/CartButton.dart';
import 'package:groceries_app_ui/Models/Cartlist.dart';

import '../../Config/TextStyle.dart';
import '../../Models/CardList.dart';
import '../../Models/CartContoainers.dart';
import 'CheckOut.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("My Cart", style: h2size20black),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
          child:Container(
              height: 550,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: dataCart.length,
                itemBuilder: (context, index) {
                  return CartContainer(dataCart[index]);
                },
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: CartButton(text: 'Go to Checkout', textStyle: h2height18, press: (){
              showModalBottomSheet(

                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return BottomSheetContent();
                },
              );
            },),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

