import 'package:flutter/material.dart';

import '../Components/TopProductBar.dart';
import '../Config/Colors.dart';
import '../Config/TextStyle.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({required this.itemName, required this.imagePath,required this.detail});
  final String itemName;
  final String imagePath;
final String detail;


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final PageController _pageController = PageController();
  int selectedPage = 0;
  bool favorite=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.lightGrey,

                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),

                )
              ),
              height: 300,
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedPage = page;
                  });
                },

                children: [
                  Products(imagePath: widget.imagePath, itemname: widget.itemName, detail: widget.detail, selectedPage: selectedPage,),
                  Products(imagePath: widget.imagePath, itemname: widget.itemName, detail: widget.detail, selectedPage: selectedPage,),
                  Products(imagePath: widget.imagePath, itemname: widget.itemName, detail: widget.detail, selectedPage: selectedPage,),


                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(widget.itemName,style: h1size26,),
                  SizedBox(width: 220,),
                  IconButton(
                    icon: Icon(!favorite
                        ? Icons.favorite_border_outlined
                        : Icons.favorite,color: AppColors.Grey,),
                    onPressed: () {
                      setState(
                            () {
                          favorite = !favorite;
                        },
                      );
                    },
                  ),                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}