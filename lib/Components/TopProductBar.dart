import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String imagePath;

  const Products({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // color: Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_ios),
            Image.asset(imagePath),
          ],
        ),
      ),
    );
  }
}
