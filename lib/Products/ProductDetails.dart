import 'package:flutter/material.dart';

import '../Components/TopProductBar.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({required this.itemName, required this.imagePath});
  final String itemName;
  final String imagePath;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView(
                children: [
                  Products(imagePath: widget.imagePath),
                  Products(imagePath: widget.imagePath),
                  Products(imagePath: widget.imagePath),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}