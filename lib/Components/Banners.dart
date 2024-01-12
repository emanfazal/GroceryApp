import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Config/assets.dart';

Widget buildBanner( ) {
  return Banner(
    message: "",
    location: BannerLocation.topStart,
    child: Container(

      decoration: BoxDecoration(
        image: DecorationImage(

          image:AssetImage(
            Images.bannerImage,

          ),
          fit: BoxFit.fill,

        ),
      ),
      height: 150,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          children: <Widget>[
         
            Text(
              'Your New Title',
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Your New Subtitle',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ),
  );
}
